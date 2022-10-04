//
//  AccountView.swift
//  EComics
//
//  Created by Bui Trung Quan on 30/09/2022.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                ScrollView(showsIndicators: false) {
                    Text("Hồ Sơ")
                        .font(.headline)
                    Image("user5")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(
                            Circle()
                                .stroke(lineWidth: 10)
                                .fill(Color(hex: "2B8FB9"))
                        )
                    Text("Mỹ Hạnh")
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack {
                        HStack {
                            VStack(spacing: 8) {
                                Text("Điểm của tôi")
                                Text("11")
                                    .fontWeight(.bold)
                            }
                            
                            Rectangle()
                                .fill(.secondary)
                                .frame(width: 1, height: 50)
                            
                            VStack(spacing: 8) {
                                Text("Phiếu đọc của tôi")
                                Text("5")
                                    .fontWeight(.bold)
                            }
                            
                            Rectangle()
                                .fill(.secondary)
                                .frame(width: 1, height: 50)
                            
                            VStack(spacing: 8) {
                                Text("Xu của tôi")
                                Text("20")
                                    .fontWeight(.bold)
                            }
                        }
                        .zIndex(1)
                        .font(.subheadline)
                        .padding()
                        .padding(.horizontal, 8)
                        .background(.white)
                        .mask(RoundedRectangle(cornerRadius: 40))
                        .shadow(color: Color(hex: "DCEDF3"), radius: 5, x: 0, y: 20)
                        .shadow(color: Color(hex: "DCEDF3"), radius: 2, x: 0, y: 10)
                        
                        VStack {
                            ForEach(actions) { action in
                                let isLast = action == actions.last
                                
                                NavigationLink(destination: AuthScreen()) {
                                    ActionComponent(action: action)
                                        .padding(.bottom)
                                        .padding(.top, 4)
                                        .overlay(
                                            Rectangle()
                                                .frame(height: isLast ? 0 : 1)
                                        ,alignment: .bottom)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding()
                        .padding(.top,50)
                        .background(.white)
                        .mask(RoundedRectangle(cornerRadius: 30))
                        .offset(y: -40)
                        
                    }
                }
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

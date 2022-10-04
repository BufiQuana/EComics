//
//  FavoritesView.swift
//  EComics
//
//  Created by Bui Trung Quan on 30/09/2022.
//

import SwiftUI

struct FavoritesView: View {
    @State private var currentPage = 1
    @State private var isShowModal = false
    var message: String {
        if currentPage == 1 {
            return "Bạn có chắc muốn xoá lịch sử truyện đã xem?"
        }
        return "Bạn có chắc muốn xoá danh sách truyện yêu thích?"
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                if isShowModal {
                    VStack(spacing: 8) {
                        Button {
                            isShowModal = false
                        } label: {
                            Image(systemName: "xmark")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .font(.title2)
                        }
                        
                        Text(message)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 8)
                        HStack(spacing: 16) {
                            Button {
                                isShowModal = false
                            } label: {
                                Text("Huỷ")
                                    .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 10).stroke())
                            }
                            
                            Button {
                                isShowModal = false
                            } label: {
                                Text("Xoá")
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color(hex: "E60A32")
                                                 )
                                    )
                            }
                        }
                        .padding(.top, 8)
                        
                    }
                    .zIndex(1)
                    .buttonStyle(.plain)
                    .frame(width: 200, height: 140)
                    .font(.footnote)
                    .fontWeight(.bold)
                    .padding()
                    .background(Color(hex: "F9F9F9"))
                    .mask(RoundedRectangle(cornerRadius: 10))
                    .shadow(radius: 10)
                }
                
                
                ScrollView(showsIndicators: false) {
                    VStack {
                        Text("Tủ Sách")
                            .font(.headline)
                        HStack {
                            Button {
                                currentPage = 1
                            } label: {
                                Text("Lịch sử")
                                    .font(.subheadline)
                                    .fontWeight(currentPage == 1 ? .bold : .semibold)
                                    .foregroundColor(currentPage == 1 ? .white : .secondary)
                                    .frame(maxWidth: .infinity)
                                    .padding([.leading, .vertical])
                                    .background(currentPage == 1 ? Color(hex: "99C9DD") : Color.clear)
                                    .mask(RoundedRectangle(cornerRadius: 30))
                                    .padding([.leading, .vertical], 8)
                            }
                            
                            Button {
                                currentPage = 2
                            } label: {
                                Text("Yêu thích")
                                    .font(.subheadline)
                                    .fontWeight(currentPage == 2 ? .bold : .semibold)
                                    .foregroundColor(currentPage == 2 ? .white : .secondary)
                                    .frame(maxWidth: .infinity)
                                    .padding([.trailing, .vertical])
                                    .background(currentPage == 2 ? Color(hex: "99C9DD") : Color.clear)
                                    .mask(RoundedRectangle(cornerRadius: 30))
                                    .padding([.trailing, .vertical], 8)
                            }
                        }
                        .background(Color(hex: "F9F9F9"))
                        .mask(RoundedRectangle(cornerRadius: 30))
                        
                        HStack {
                            Text("6 kết quả")
                                .foregroundColor(.black)
                                .fontWeight(.semibold)
                            Spacer()
                            Image(systemName: "arrow.up.arrow.down")
                            Button {
                                isShowModal = true
                            } label: {
                                Image(systemName: "trash")
                            }
                            
                        }
                        .foregroundColor(.secondary)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .overlay(
                            Rectangle()
                                .fill(Color.secondary)
                                .frame(height: 2)
                            ,alignment: .bottom
                        )
                        
                        ForEach(comics.shuffled()) { comic in
                            HCard(comic: comic)
                        }
                        .padding(.top)
                    }
                }
                .padding()
            }
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}

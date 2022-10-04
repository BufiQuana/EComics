//
//  PaginationView.swift
//  EComics
//
//  Created by Bui Trung Quan on 01/10/2022.
//

import SwiftUI

struct PaginationView: View {
    @State private var currentPage = 1
    let maxPage: Int
    var body: some View {
        HStack {
            Button(action: {
                if currentPage > 1 {
                    currentPage -= 1
                }
            }, label: {
                HStack(spacing: 4) {
                    Image(systemName: "chevron.backward")
                        .fontWeight(.bold)
                    Text("Trang trước")
                }
                .opacity(currentPage == 1 ? 0.6 : 1)
            })
            Spacer()
            Text("Trang \(currentPage) / \(maxPage)")
                .fontWeight(.bold)
            Spacer()
            Button {
                if currentPage < maxPage {
                    currentPage += 1
                }
            } label: {
                HStack(spacing: 4) {
                    Text("Trang sau")
                    Image(systemName: "chevron.forward")
                        .fontWeight(.bold)
                }
                .opacity(currentPage == maxPage ? 0.6 : 1)
            }
            
        }
        .buttonStyle(.plain)
        .padding()
        .font(.subheadline)
    }
}

struct PaginationView_Previews: PreviewProvider {
    static var previews: some View {
        PaginationView(maxPage: 10)
    }
}

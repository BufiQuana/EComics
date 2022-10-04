//
//  ClassifyView.swift
//  EComics
//
//  Created by Bui Trung Quan on 30/09/2022.
//

import SwiftUI

struct ClassifyView: View {
    @State private var textSearch = ""
    @State private var isShow = false
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            HStack {
                Image(systemName: "magnifyingglass").opacity(0.6)
                TextField("Tìm tên truyện hoặc tác giả...", text: $textSearch)
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
            .background {
                RoundedRectangle(cornerRadius: 40).stroke()
            }
            .padding(.vertical,10)
            
            HStack {
                Text("0 kết quả")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                Spacer()
                Image(systemName: "arrow.up.arrow.down")
                Button {
                    isShow.toggle()
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }

            }
            .foregroundColor(.secondary)
            .font(.title2)
            .fontWeight(.bold)
            .padding(.vertical)
            
//            LazyVGrid(columns: columns) {
//                ForEach(comics) { comic in
//                    VCard(comic: comic)
//                }
//            }
            
            VStack {
                Image("404")
                Text("Không tìm thấy")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("Xin lỗi, từ khoá tìm kiếm không được tìm thấy. Xin vui lòng thử lại sau hoặc tìm kiếm bằng từ khoá khác.")
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
            }
            .padding(.horizontal,20)
            .padding(.vertical)
            
            VStack {
                HStack {
                    Text("Có Thể Bạn Sẽ Thích")
                        .font(.headline)
                    Spacer()
                    Button("Xem thêm") {
                    }
                }
                .padding(.vertical)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(comics.shuffled()) { comic in
                            VCard(comic: comic)
                        }
                    }
                }
            }
        }
        .sheet(isPresented: $isShow) {
            SheetView()
        }
        .padding()
        
    }
}

struct ClassifyView_Previews: PreviewProvider {
    static var previews: some View {
        ClassifyView()
    }
}

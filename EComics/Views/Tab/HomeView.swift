//
//  HomeView.swift
//  EComics
//
//  Created by Bui Trung Quan on 30/09/2022.
//

import SwiftUI

struct HomeView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State private var isSearch = false
    @State private var textSearch = ""
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                HStack {
                    IconBrand(image: Image("IconApp"))
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Chào buổi sáng,")
                            .font(.caption)
                        Text("Mỹ Hạnh").fontWeight(.bold)
                    }
                    
                    Spacer()
                    Button {
                        withAnimation(.spring()) {
                            isSearch.toggle()
                        }
                    } label: {
                        Image(systemName: !isSearch ? "magnifyingglass" : "xmark").font(.title2)
                    }
                    .buttonStyle(.plain)
                }
                if isSearch {
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
                }
                
                
                Image("comic1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack(alignment: .leading ,spacing: 8) {
                            Text("Dù nàng có mất đi kí ức thì nàng vẫn là người ta yêu")
                                .font(.callout)
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                            HStack {
                                Text("-Công Chúa Của Tôi-")
                                    .foregroundColor(.white)
                                Spacer()
                                Button {
                                    
                                } label: {
                                    Text("Đọc ngay")
                                }
                            }
                            .font(.caption2)
                        }
                        .padding(8)
                        .frame(width: 220)
                        .background(.black.opacity(0.6))
                        .shadow(radius: 20, x: 0, y: 10)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                        .padding()
                        .padding(.bottom)
                    }
                HStack {
                    Text("Danh mục")
                        .font(.headline)
                    Spacer()
                    NavigationLink(destination: ListTopicView()) {
                        Text("Xem thêm")
                    }
                }
                .padding(.vertical)
                
                LazyVGrid(columns: columns) {
                    ForEach(0..<6) { index in
                        NavigationLink(destination: DetailTopicView(topic: topics[index])) {
                            TopicView(topic: topics[index])
                        }
                    }
                }
                
                VStack {
                    HStack {
                        Text("Truyện Mới")
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
                
                VStack {
                    HStack {
                        Text("Truyện Hot")
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
                
                VStack(spacing: 16) {
                    HStack {
                        Text("Action")
                            .font(.headline)
                        Spacer()
                        Button("Xem thêm") {
                        }
                    }
                    .padding(.vertical)
                    
                    ForEach(comics) { comic in
                        HCard(comic: comic)
                    }
                }
                
                VStack {
                    HStack {
                        Text("Shool Life")
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
            .padding(24)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

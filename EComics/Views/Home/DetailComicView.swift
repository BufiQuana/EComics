//
//  DetailComicView.swift
//  EComics
//
//  Created by Bui Trung Quan on 01/10/2022.
//

import SwiftUI

struct DetailComicView: View {
    let comic: Comic
    @Environment(\.dismiss) var dismiss
    @State private var currentSelect = 0
    
    let selects = ["Mô Tả", "Bình Luận", "Chương"]
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack(alignment: .top) {
                Image(comic.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                VStack(spacing: 8) {
                    HStack {
                        Text(comic.title)
                            .font(.title)
                            .fontWeight(.semibold)
                        Spacer()
                        Image(systemName: comic.isLike ? "heart.fill" : "heart")
                            .foregroundColor(comic.isLike ? .red : .black)
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                    HStack {
                        Label("\(comic.views)", systemImage: "eye")
                        Label("\(comic.favorites)", systemImage: "heart")
                        Label("\(comic.views)", systemImage: "text.bubble")
                        Spacer()
                    }
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    
                    HStack(spacing: 0) {
                        ForEach(Array(selects.enumerated()), id: \.offset) { index, title in
                            Button {
                                currentSelect = index
                            } label: {
                                Text(title)
                                    .fontWeight(.semibold)
                                    .padding([.bottom,.horizontal])
                                    .frame(maxWidth: .infinity)
                                    .overlay(
                                        Rectangle()
                                            .frame(height: 2)
                                        ,alignment: .bottom)
                                    .foregroundColor(currentSelect == index ? .blue : .black)
                                    .opacity(currentSelect == index ? 1 : 0.4)
                            }
                        }
                    }
                    .padding(.top   )
                    
                    if currentSelect == 0 {
                        DescriptionComicView()
                    } else if currentSelect == 1 {
                        CommentsView()
                    } else if currentSelect == 2 {
                        ChapterComicView()
                    }
                    
                    NavigationLink(destination: DetailChapterView(comic: comic, chapter: 1)) {
                        Text("Đọc từ đầu")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color(hex: "0078AA"))
                                    .frame(width: 280, height: 50)
                                    .opacity(0.9)
                            )
                    }
                    .padding(.vertical)
                    
                    VStack {
                        HStack {
                            Text("Có thể bạn sẽ thích")
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
                .padding()
                .mask(RoundedRectangle(cornerRadius: 30))
                .background(
                    RoundedRectangle(cornerRadius: 30).fill(.white)
                        .shadow(radius: 10, x: 0, y: -20)
                )
                .padding(.top, 300)
            }
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.backward")
                            .fontWeight(.bold)
                        Text("Trang trước")
                    }
                    .foregroundColor(.black)
                }
            }
        }
    }
}

struct DetailComicView_Previews: PreviewProvider {
    static var previews: some View {
        DetailComicView(comic: comics[3])
    }
}


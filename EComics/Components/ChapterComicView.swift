//
//  ChapterComicView.swift
//  EComics
//
//  Created by Bui Trung Quan on 02/10/2022.
//

import SwiftUI

struct ChapterComicView: View {
    var body: some View {
        ScrollView {
            ForEach(0..<13) { index in
                let chapter = 13 - index
                
                HStack(spacing: 8) {
                    NavigationLink(destination: DetailChapterView(comic: comics[0], chapter: chapter)) {
                        Text("Chương \(chapter)")
                    }
                    .buttonStyle(.plain)
                    
                    Spacer()
                    HStack {
                        HStack(spacing: 4) {
                            Image(systemName: "eye")
                            Text("0")
                        }
                        
                        HStack(spacing: 4) {
                            Image(systemName: "heart")
                            Text("0")
                        }
                        
                        HStack(spacing: 4) {
                            Image(systemName: "ellipsis.bubble")
                            Text("0")
                        }
                        
                        Text("1 phút trước")
                    }
                    .padding(.leading, 8)
                    .font(.subheadline)
                }
                .padding(.bottom)
                .padding(.top, 4)
                .overlay(
                    Rectangle()
                        .frame(height: 2)
                    ,alignment: .bottom)
            }
        }
        .frame(height: 300)
        .padding(.bottom)
    }
}

struct ChapterComicView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterComicView()
    }
}

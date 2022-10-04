//
//  VCard.swift
//  EComics
//
//  Created by Bui Trung Quan on 30/09/2022.
//

import SwiftUI

struct VCard: View {
    let comic: Comic
    var body: some View {
        NavigationLink(destination: DetailComicView(comic: comic)) {
            VStack(alignment: .leading) {
                Image(comic.image)
                    .resizable()
                    .overlay {
                        Image(systemName: !comic.isLike ? "heart" : "heart.fill")
                            .foregroundColor(!comic.isLike ? .secondary : .red)
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                            .padding()
                    }
                VStack(alignment: .leading) {
                    Text(comic.title)
                        .lineLimit(1)
                        .font(.headline)
                    HStack {
                        Label("\(comic.views)", systemImage: "eye")
                        Label("\(comic.favorites)", systemImage: "heart")
                        Label("\(comic.views)", systemImage: "text.bubble")
                    }
                    .font(.system(size: 10))
                    .fontWeight(.semibold)
                    
                    Text("Chương \(comic.chapter)")
                        .font(.subheadline)
                }
            }
            .frame(width: 160, height: 250)
        }
        .buttonStyle(.plain)
    }
}

struct VCard_Previews: PreviewProvider {
    static var previews: some View {
        VCard(comic: comics[0])
    }
}

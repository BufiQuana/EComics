//
//  HCard.swift
//  EComics
//
//  Created by Bui Trung Quan on 30/09/2022.
//

import SwiftUI

struct HCard: View {
    let comic: Comic
    
    var body: some View {
        NavigationLink(destination: DetailComicView(comic: comic)) {
            HStack {
                Image(comic.image)
                    .resizable()
                    .frame(width: 110)
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text(comic.title)
                            .font(.title3)
                            .fontWeight(.bold)
                        Text("Đọc tiếp chương \(comic.chapter)")
                        Text("Chương mới \(comic.chapter)")
                    }
                    
                    Spacer()
                    Image(systemName: !comic.isLike ? "heart" : "heart.fill")
                        .foregroundColor(!comic.isLike ? .secondary : .red)
                }
                
                
            }
            .frame(height: 80)
        }
        .buttonStyle(.plain)
    }
}

struct HCard_Previews: PreviewProvider {
    static var previews: some View {
        HCard(comic: comics[0])
    }
}

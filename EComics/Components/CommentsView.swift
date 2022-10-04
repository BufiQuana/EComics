//
//  CommentsView.swift
//  EComics
//
//  Created by Bui Trung Quan on 01/10/2022.
//

import SwiftUI

struct CommentsView: View {
    @State private var textComment = ""
    
    var body: some View {
        VStack {
            ScrollView() {
                ForEach(comments) { comment in
                    CommentComponent(comment: comment)
                }
            }
            .edgesIgnoringSafeArea(.trailing)
            .frame(height: 300)
            .padding(.vertical)
            
            
            HStack {
                Image("user5")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 40, height: 40)
                HStack {
                    TextField("Viết bình luận...", text: $textComment)
                    Image(systemName: "face.smiling")
                        .font(.title)
                        .fontWeight(.bold)
                        .opacity(0.5)
                }
                .padding(8)
                .overlay {
                    RoundedRectangle(cornerRadius: 10).stroke()
                }
                .padding(.leading)
                Image(systemName: "paperplane")
                    .padding(.leading, 8)
                    .font(.title)
                    .fontWeight(.bold)
            }
        }
        .padding(.vertical)
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView()
    }
}

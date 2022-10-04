//
//  CommentComponent.swift
//  EComics
//
//  Created by Bui Trung Quan on 01/10/2022.
//

import SwiftUI

struct CommentComponent: View {
    let comment: Comment
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image(comment.image)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 40, height: 40)
                VStack(alignment: .leading, spacing: 8) {
                    VStack(alignment: .leading, spacing: 4) {
                        HStack {
                            Text(comment.user)
                                .font(.headline)
                            Spacer()
                            Text("9 phút trước")
                                .padding(.trailing)
                                .opacity(0.6)
                        }
                        Text(comment.content)
                            .font(.callout)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding([.bottom, .leading])
                    .padding(.top,8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke()
                    }
                    HStack(spacing: 16) {
                        HStack(spacing: 4) {
                            Image(systemName: "hand.thumbsup")
                            Text("\(comment.likes)")
                        }
                        
                        HStack(spacing: 4) {
                            Image(systemName: "hand.thumbsdown")
                            Text("\(comment.disLikes)")
                        }
                        
                        HStack(spacing: 4) {
                            Image(systemName: "message")
                            Text("\(comment.replies.count)")
                        }
                        
                        Text("Phản hồi")
                    }
                    .padding(.leading, 8)
                    .font(.footnote)
                }
                .padding(.leading)
            }
            
            ForEach(comment.replies) { reply in
                CommentComponent(comment: reply)
            }
            .padding(.leading,70)
        }
        .padding(.vertical, 8)
    }
}

struct CommentComponent_Previews: PreviewProvider {
    static var previews: some View {
        CommentComponent(comment: comments[1])
    }
}

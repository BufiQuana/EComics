//
//  Comment.swift
//  EComics
//
//  Created by Bui Trung Quan on 01/10/2022.
//

import Foundation

struct Comment : Identifiable {
    var id = UUID()
    let image: String
    let user: String
    let content: String
    var likes: Int = 0
    var disLikes: Int = 0
    var replies: [Comment] = []
}

let comments: [Comment] = [
    Comment(image: "user1", user: "Trúc Linh", content: "Tui thích nữ chính với nam phụ hơn huhu", likes: 8),
    Comment(image: "user2", user: "Tôi là ai", content: "Có ai thích nam phụ giống tui không ta ??", likes: 8, disLikes: 1, replies: [reply1, reply2]),
]

let reply1: Comment = Comment(image: "user3", user: "Anna Lam", content: "Không", likes: 1, disLikes: 1)

let reply2: Comment = Comment(image: "user4", user: "Anh Da Đen", content: "Tui thì thích nam chính với nam phụ hơn.", likes: 8)

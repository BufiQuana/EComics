//
//  Comic.swift
//  EComics
//
//  Created by Bui Trung Quan on 30/09/2022.
//

import Foundation

struct Comic: Identifiable {
    var id = UUID()
    let title : String
    let views : Int
    let favorites : Int
    let comments : Int
    let chapter : Int
    let image: String
    var isLike: Bool = false
}

let comics: [Comic] = [
    Comic(title: "Quán Kịch Bản Trần Mộng", views: 70, favorites: 53, comments: 12, chapter: 14, image: "comic8"),
    Comic(title: "Hoa Quân", views: 70, favorites: 53, comments: 12, chapter: 14, image: "comic9"),
    Comic(title: "Kế Hoạch Tự Cứu Của Phản Phái Ma Nữ", views: 70, favorites: 53, comments: 12, chapter: 14, image: "comic10", isLike: true),
    Comic(title: "Đế Vương Hắc", views: 70, favorites: 53, comments: 12, chapter: 14, image: "comic11"),
    Comic(title: "Lại Gặp Được Em", views: 70, favorites: 53, comments: 12, chapter: 14, image: "comic12"),
    Comic(title: "Hoa Thiên Cốt", views: 70, favorites: 53, comments: 12, chapter: 14, image: "comic13"),
    
]

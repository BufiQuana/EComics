//
//  Topic.swift
//  EComics
//
//  Created by Bui Trung Quan on 30/09/2022.
//

import Foundation

struct Topic: Identifiable {
    var id = UUID()
    let title: String
    let color: String
    let image: String
}

let topics: [Topic] = [
    Topic(title: "Action", color: "B5C08C", image: "comic2"),
    Topic(title: "Martial Arts", color: "25313E", image: "comic3"),
    Topic(title: "Adventure", color: "8CA62E", image: "comic4"),
    Topic(title: "Mature", color: "596071", image: "comic5"),
    Topic(title: "Adult", color: "48A44C", image: "comic6"),
    Topic(title: "Mecha", color: "670920", image: "comic7"),
    Topic(title: "Anime", color: "3F1026", image: "comic2"),
    Topic(title: "Mystery", color: "25344A", image: "comic3"),
    Topic(title: "Comedy", color: "B5A8A9", image: "comic4"),
    Topic(title: "One shot", color: "BB6B54", image: "comic5"),
    Topic(title: "Doujinshi", color: "F9B681", image: "comic6"),
    Topic(title: "Romance", color: "3A526B", image: "comic7"),
    Topic(title: "Drama", color: "E4BEF1", image: "comic2"),
    Topic(title: "Psychological", color: "BB7B9D", image: "comic3"),
    Topic(title: "Ecchi", color: "16242D", image: "comic4"),
    Topic(title: "Sci-fi", color: "75444D", image: "comic5"),
    Topic(title: "Fantasy", color: "621814", image: "comic6"),
    Topic(title: "Seinen", color: "A9C4D7", image: "comic7"),
    Topic(title: "Gender Bender", color: "91BEFF", image: "comic2"),
    Topic(title: "Shounen Ai", color: "2D1F1C", image: "comic3"),
    Topic(title: "Horror", color: "307BA6", image: "comic4"),
    Topic(title: "Shice of Life", color: "BE90EA", image: "comic5"),
    Topic(title: "Harem", color: "AB8E66", image: "comic6"),
    Topic(title: "Sports", color: "A48784", image: "comic7"),
    Topic(title: "Historical", color: "F4D1C7", image: "comic2"),
    Topic(title: "Supernatural", color: "80A9E0", image: "comic3"),
    Topic(title: "Live Action", color: "EDBA8B", image: "comic4"),
    Topic(title: "School Life", color: "F9B75D", image: "comic5"),
    Topic(title: "Manhua", color: "2D3F54", image: "comic6"),
    Topic(title: "Shoujo Ai", color: "361A28", image: "comic7"),
    Topic(title: "Manhwa", color: "69628D", image: "comic2"),
    Topic(title: "18+", color: "6F2E0B", image: "comic3"),
    ]


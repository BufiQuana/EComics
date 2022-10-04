//
//  TopicView.swift
//  EComics
//
//  Created by Bui Trung Quan on 30/09/2022.
//

import SwiftUI

struct TopicView: View {
    var topic: Topic
    var body: some View {
        ZStack {
            Color(hex: topic.color)
            HStack {
                Text(topic.title)
                    .lineLimit(1)
                    .foregroundColor(.white)
                Spacer()
                Image(topic.image)
            }
            .padding(.leading)
        }
        .mask(RoundedRectangle(cornerRadius: 10))
        .frame(maxWidth: .infinity, maxHeight: 48)
    }
}

struct TopicView_Previews: PreviewProvider {
    static var previews: some View {
        TopicView(topic: topics[0])
    }
}

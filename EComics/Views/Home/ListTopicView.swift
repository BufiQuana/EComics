//
//  ListTopicView.swift
//  EComics
//
//  Created by Bui Trung Quan on 01/10/2022.
//

import SwiftUI

struct ListTopicView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(topics) { topic in
                    NavigationLink(destination: DetailTopicView(topic: topic)) {
                        TopicView(topic: topic)
                    }
                }
            }
        }
        .padding()
        .navigationTitle("Danh mục")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.backward")
                            .fontWeight(.bold)
                        Text("Trang chủ")
                    }
                    .foregroundColor(.black)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.secondary)
                }
            }
        }
    }
}

struct ListTopicView_Previews: PreviewProvider {
    static var previews: some View {
        ListTopicView()
    }
}

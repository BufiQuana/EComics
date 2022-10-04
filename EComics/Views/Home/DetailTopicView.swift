//
//  DetailTopicView.swift
//  EComics
//
//  Created by Bui Trung Quan on 01/10/2022.
//

import SwiftUI

struct DetailTopicView: View {
    let topic: Topic
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    @Environment(\.dismiss) var dismiss
    @State private var isShow = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            HStack {
                Spacer()
                Image(systemName: "arrow.up.arrow.down")
                Button {
                    isShow.toggle()
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }
                
            }
            .foregroundColor(.secondary)
            .font(.title2)
            .fontWeight(.bold)
            .padding(.vertical)
            
            LazyVGrid(columns: columns) {
                ForEach(0 ..< 2) { item in
                    ForEach(comics) { comic in
                        VCard(comic: comic)
                    }
                }
            }
            
            PaginationView(maxPage: 10)
            
        }
        .padding()
        .sheet(isPresented: $isShow) {
            SheetView()
        }
        .navigationTitle(topic.title)
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

struct DetailTopicView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTopicView(topic: topics[0])
    }
}



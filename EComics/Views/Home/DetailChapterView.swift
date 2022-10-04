//
//  DetailChapterView.swift
//  EComics
//
//  Created by Bui Trung Quan on 02/10/2022.
//

import SwiftUI

struct DetailChapterView: View {
    @Environment(\.dismiss) var dismiss
    
    let comic: Comic
    let chapter: Int
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            Image("chapter")
                .resizable()
            
            VStack(alignment: .leading, spacing: 0) {
                Text("Bình Luận")
                    .font(.headline)
                CommentsView()
                
                HStack(spacing: 4) {
                    Image(systemName: "chevron.backward")
                        .fontWeight(.bold)
                    Text("Chương trước")

                    HStack {
                        Text("Chương \(chapter)")
                        Image(systemName: "chevron.down")
                    }
                    .fontWeight(.bold)
                    .padding(8)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10).stroke()
                    }
                    .frame(maxWidth: .infinity)
                    
                    Text("Chương sau")
                    Image(systemName: "chevron.forward")
                        .fontWeight(.bold)
                }
                .font(.footnote)
                .padding(.top)
            }
            .padding([.top, .horizontal])
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Chương \(chapter)")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.backward")
                            .fontWeight(.bold)
                        Text("Trang trước")
                    }
                    .foregroundColor(.black)
                }
            }
        }
    }
}

struct DetailChapterView_Previews: PreviewProvider {
    static var previews: some View {
        DetailChapterView(comic: comics[0], chapter: 13)
    }
}

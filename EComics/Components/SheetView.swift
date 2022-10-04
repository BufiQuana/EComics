//
//  SheetView.swift
//  EComics
//
//  Created by Bui Trung Quan on 30/09/2022.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    let columns = [
        GridItem((.flexible())),
        GridItem((.flexible()))
    ]
    
    @State private var listCategory: [String] = []
    
    var body: some View {
        VStack(alignment: .leading) {
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .fontWeight(.bold)
            }
            .buttonStyle(.plain)
            .frame(maxWidth: .infinity, alignment: .trailing)
            Text("Bộ lọc")
                .font(.headline)
                .frame(maxWidth: .infinity)
            VStack(alignment: .leading) {
                Text("Danh mục: ")
                    .font(.headline)
                LazyVGrid(columns: columns, spacing: 8) {
                    ForEach(topics) { topic in
                        CheckBoxView(listCategory: $listCategory, text: topic.title)
                    }
                }
            }
            Spacer()
            Button {
                print(listCategory)
            } label: {
                Text("Áp dụng")
                    .foregroundColor(.white)
            }
            .frame(width: 280, height: 48)
            .background(Color(hex: "0078AA"))
            .mask(RoundedRectangle(cornerRadius: 10))
            .frame(maxWidth: .infinity, maxHeight: 50)
            .padding(.top)

        }
        .padding()
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}



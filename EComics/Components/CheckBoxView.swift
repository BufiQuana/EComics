//
//  CheckBoxView.swift
//  EComics
//
//  Created by Bui Trung Quan on 30/09/2022.
//

import SwiftUI

struct CheckBoxView: View {
    @State var checked: Bool = false
    @Binding var listCategory: [String]
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: checked ? "checkmark.square.fill" : "square")
                .foregroundColor(checked ? Color(UIColor.systemBlue) : Color.secondary)
                .onTapGesture {
                    self.checked.toggle()
                    if listCategory.contains(text) {
                        let index = listCategory.firstIndex(of: text)
                        listCategory.remove(at: index!)
                    } else {
                        listCategory.append(text)
                    }
                    print(listCategory)
                }
            Text(text)
                .font(.callout)
                .fontWeight(.semibold)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxView(listCategory: .constant([]), text: "Action")
    }
}

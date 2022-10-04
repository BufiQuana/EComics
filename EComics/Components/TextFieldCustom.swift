//
//  TextFieldCustom.swift
//  EComics
//
//  Created by Bui Trung Quan on 30/09/2022.
//

import SwiftUI

struct TextFieldCustom: View {
    let icon: String
    let placeholder: String
    @Binding var text: String
    let isSecure: Bool
    @State private var isHidden = true
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.system(size: 24))
                .opacity(0.6)
            if !isHidden {
                TextField(placeholder, text: $text)
            } else {
                SecureField(placeholder, text: $text)
            }
            
            
            if isSecure {
                Button {
                    isHidden.toggle()
                } label: {
                    Image(systemName: !isHidden ? "eye" : "eye.slash")
                        .font(.system(size: 24))
                        .opacity(0.3)
                }
                .buttonStyle(.plain)
            }
        }
        .padding()
        .padding(.horizontal)
        .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .background(
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(Color(hex: "636366").opacity(0.1))
        )
    }
}

struct TextFieldCustom_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldCustom(icon: "person", placeholder: "Tên người dùng", text: .constant(""), isSecure: true)
    }
}

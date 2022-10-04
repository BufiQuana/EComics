//
//  IconBrand.swift
//  EComics
//
//  Created by Bui Trung Quan on 30/09/2022.
//

import SwiftUI

struct IconBrand: View {
    let image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 24, height: 24)
            .padding()
            .padding(.horizontal, 8)
            .overlay(
                RoundedRectangle(cornerRadius: 10).stroke()
            )
    }
}

struct IconBrand_Previews: PreviewProvider {
    static var previews: some View {
        IconBrand(image: Image("Facebook"))
    }
}

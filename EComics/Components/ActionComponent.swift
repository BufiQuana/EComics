//
//  ActionComponent.swift
//  EComics
//
//  Created by Bui Trung Quan on 02/10/2022.
//

import SwiftUI

struct ActionComponent: View {
    let action: ActionAccount
    
    var body: some View {
        HStack {
            Image(systemName: action.icon)
                .font(.title2)
                .fontWeight(.bold)
            Text(action.title)
            Spacer()
            Image(systemName: "chevron.forward")
                .font(.title2)
                .fontWeight(.bold)
        }
    }
}

struct ActionComponent_Previews: PreviewProvider {
    static var previews: some View {
        ActionComponent(action: actions[0])
    }
}


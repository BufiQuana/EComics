//
//  Tab.swift
//  EComics
//
//  Created by Bui Trung Quan on 29/09/2022.
//

import SwiftUI

struct Tab: View {
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                Label("Trang chủ", systemImage: "house")
            }
                .tag(1)
            
            ClassifyView()
                .tabItem {
                    Label("Phân loại", systemImage: "square.grid.2x2")
                }
                .tag(2)
            
            FavoritesView()
                .tabItem {
                    Label("Tủ sách", systemImage: "bookmark.fill")
                }
                .tag(3)
            
            AccountView()
                .tabItem {
                    Label("Hồ sơ", systemImage: "person")
                }
                .tag(4)
            
        }
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}

//
//  EComicsApp.swift
//  EComics
//
//  Created by Bui Trung Quan on 29/09/2022.
//

import SwiftUI

@main
struct EComicsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Auth(isLogin: false))
        }
    }
}

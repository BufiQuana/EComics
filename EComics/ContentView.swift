//
//  ContentView.swift
//  EComics
//
//  Created by Bui Trung Quan on 29/09/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var auth: Auth
    
    var body: some View {
        if !auth.isLogin {
            AuthScreen()
        } else {
            Tab()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Auth(isLogin: false))
    }
}

//
//  AuthScreen.swift
//  EComics
//
//  Created by Bui Trung Quan on 30/09/2022.
//

import SwiftUI

struct AuthScreen: View {
    @State private var isSignIn = true

    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            if isSignIn {
                SignInView(isSignIn: $isSignIn)
                    .transition(.move(edge: .trailing))
            } else {
                SignUpView(isSignIn: $isSignIn)
                    .transition(.move(edge: .trailing))
            }
        }
        .toolbar(.hidden)
    }
}

struct AuthScreen_Previews: PreviewProvider {
    static var previews: some View {
        AuthScreen()
    }
}

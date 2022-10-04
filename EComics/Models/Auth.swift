//
//  Auth.swift
//  EComics
//
//  Created by Bui Trung Quan on 29/09/2022.
//

import Foundation

class Auth: ObservableObject {
    @Published var isLogin: Bool
    init(isLogin: Bool) {
        self.isLogin = isLogin
    }
}

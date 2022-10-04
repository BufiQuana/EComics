//
//  ActionAccount.swift
//  EComics
//
//  Created by Bui Trung Quan on 02/10/2022.
//

import SwiftUI

struct ActionAccount: Identifiable, Equatable {
    var id = UUID()
    let icon: String
    let title: String
}

let actions: [ActionAccount] = [
    ActionAccount(icon: "bell", title: "Thông báo"),
    ActionAccount(icon: "gearshape", title: "Cài Đặt"),
    ActionAccount(icon: "ticket", title: "Phiếu đọc truyện của tôi"),
    ActionAccount(icon: "dollarsign.circle", title: "Mua xu"),
    ActionAccount(icon: "doc.plaintext", title: "Nhiệm vụ"),
    ActionAccount(icon: "message", title: "Phản hồi"),
    ActionAccount(icon: "lock", title: "Đổi mật khẩu"),
    ActionAccount(icon: "return.right", title: "Đăng xuất"),
]

//
//  SignUpView.swift
//  EComics
//
//  Created by Bui Trung Quan on 30/09/2022.
//

import SwiftUI

struct SignUpView: View {
    @State private var textPhone = ""
    @State private var textUser = ""
    @State private var textPass = ""
    @State private var textPass2 = ""
    @Binding var isSignIn:Bool
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Đăng ký")
                .font(.title2)
                .fontWeight(.bold)
            Text("Nhập thông tin đăng ký.")
                .font(.subheadline)
            
            VStack(spacing: 16) {
                TextFieldCustom(icon: "phone", placeholder: "Số điện thoại", text: $textPhone, isSecure: false)
                
                TextFieldCustom(icon: "person", placeholder: "Tên người dùng", text: $textUser, isSecure: false)
                
                TextFieldCustom(icon: "lock", placeholder: "Mật khẩu", text: $textPass, isSecure: true)
                
                TextFieldCustom(icon: "lock", placeholder: "Nhập lại mật khẩu", text: $textPass2, isSecure: true)
                
                Text("Đăng Ký")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    .background(
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(Color(hex: "0078AA").opacity(0.9))
                    )
                    .padding(.top)
            }
            
            HStack(spacing: 0) {
                Text("Đã có tài khoản? ")
                    
                
                Button {
                    withAnimation(.spring()) {
                        isSignIn.toggle()
                    }
                } label: {
                    Text("Đăng nhập ngay!")
                        .fontWeight(.bold)
                }
            }
            .font(.subheadline)
            
            
        }
        .frame(width: 300)
        .padding()
        .padding(.vertical,16)
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .background(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .fill(.white)
        )
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(isSignIn: .constant(false))
    }
}

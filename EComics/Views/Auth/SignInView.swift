//
//  SignInView.swift
//  EComics
//
//  Created by Bui Trung Quan on 29/09/2022.
//

import SwiftUI

struct SignInView: View {
    @State private var textPhone = ""
    @State private var textPass = ""
    @Binding var isSignIn: Bool
    @EnvironmentObject private var auth: Auth
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Đăng nhập")
                .font(.title2)
                .fontWeight(.bold)
            Text("Nhập thông tin đăng nhập.")
                .font(.subheadline)
            
            VStack(spacing: 16) {
                TextFieldCustom(icon: "phone", placeholder: "Số điện thoại", text: $textPhone, isSecure: false)
                
                TextFieldCustom(icon: "lock", placeholder: "Mật khẩu", text: $textPass, isSecure: true)
                
                Button {
                    auth.isLogin = true
                } label: {
                    Text("Đăng Nhập")
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

            }
            
            HStack {
                Rectangle().frame(height: 1)
                Text("Hoặc")
                Rectangle().frame(height: 1)
            }
            .padding(.top)
            
            HStack(spacing: 24) {
                IconBrand(image: Image("Facebook"))
                IconBrand(image: Image("Google"))
                IconBrand(image: Image("Apple"))
            }
            
            Button {
                
            } label: {
                Text("Quên mật khẩu?")
                    .fontWeight(.bold)
                    .font(.subheadline)
            }

            
            HStack(spacing:0) {
                Text("Chưa có tài khoản? ")
                    
                Button(action: {
                    withAnimation(.spring()) {
                        isSignIn.toggle()
                    }
                }, label: {
                    Text("Tạo Ngay!")
                        
                        .fontWeight(.bold)
                })
            }
            .font(.subheadline)
            
        }
        .onAppear{
            auth.isLogin = false
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

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(isSignIn: .constant(false))
    }
}

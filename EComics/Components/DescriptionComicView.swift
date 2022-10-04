//
//  DescriptionComicView.swift
//  EComics
//
//  Created by Bui Trung Quan on 01/10/2022.
//

import SwiftUI

struct DescriptionComicView: View {
    @State private var isExpand = false
    var body: some View {
        VStack {
            Text("Thời cấp 3 hai người vì hiểu nhầm mà bỏ lỡ nhau, sau khi tốt nghiệp đại học trở về trường cấp 3 cũ dạy học. 7 năm xa cách, nam chính lại không nhận ra cô là người con gái năm ấy!? Một cô giáo dạy thể dục mặt lạnh không hiểu tình đời, một thầy giáo dạy toán ôn nhu luôn mỉm cười nhưng xấu bụng, gặp nhau lần nữa, cảnh còn người mất, tình cảm không tật mà chết phải chăng có thể bắt đầu lại từ đầu? Mà bí mật thời cấp 3 ấy cũng đang dần được hé mở…")
                .font(.callout)
                .lineLimit(!isExpand ? 4 : .max)
            
            Button {
                isExpand.toggle()
            } label: {
                Text(!isExpand ? "Xem thêm" : "Thu gọn")
                    .font(.callout)
                    .fontWeight(.bold)
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 10).stroke()
                            .frame(width: 120, height: 50)
                    }
            }
            .padding(.vertical)
        }
    }
}

struct DescriptionComicView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionComicView()
    }
}

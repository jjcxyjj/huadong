//
//  Depart.swift
//  pro 1
//
//  Created by a on 2020/7/26.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI

struct Depart: View {
    @State var 裁剪图像 = false
    @State var 调整颜色 = false
    @State var 勾勒轮廓 = false
    @State var 去除背景 = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 0.9233211875, blue: 0.7992901206, alpha: 0))
                .frame(width: 500,height: 500)
            VStack {
                HStack {
                    Button(action: {self.裁剪图像.toggle()}) {
                        Text("裁剪\n图像")
                        .font(.system(size: 16,weight: .bold))
                            .foregroundColor(Color.black)
                    }
                    .frame(width:50,height: 50)
                    Spacer()
                    Button(action: {self.调整颜色.toggle()}) {
                        Text("调整\n颜色")
                            .font(.system(size: 16,weight: .bold))
                            .foregroundColor(Color.black)
                    }
                    .frame(width:50,height: 50)
                    Spacer()
                    Button(action: {self.勾勒轮廓.toggle()}) {
                        Text("勾勒\n轮廓")
                            .font(.system(size: 16,weight: .bold))
                            .foregroundColor(Color.black)
                    }
                    .frame(width:50,height: 50)
                    Spacer()
                    Button(action: {self.去除背景.toggle()}) {
                        Text("去除\n背景")
                            .font(.system(size: 16,weight: .bold))
                            .foregroundColor(Color.black)
                    }
                    .frame(width:50,height: 50)
                }
                .frame(width: 250,height: 50)
                Image("图层分离")
                    
            }
        }
        .offset(y:200)
    }
}

struct Depart_Previews: PreviewProvider {
    static var previews: some View {
        Depart()
    }
}

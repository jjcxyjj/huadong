//
//  ThreeD.swift
//  pro 1
//
//  Created by a on 2020/7/26.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI

struct ThreeD: View {
    @State var 三维视角 = false
    @State var 三维层次 = false
    @State var 三维去除 = false
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 0.9233211875, blue: 0.7992901206, alpha: 0))
                .frame(width: 500,height: 500)
            VStack {
                HStack {
                    Button(action: {self.三维视角.toggle()}) {
                        Text("三维视角")
                        .font(.system(size: 16,weight: .bold))
                            .foregroundColor(Color.black)
                    }
                    Spacer()
                    Button(action: {self.三维层次.toggle()}) {
                        Text("三维层次")
                            .font(.system(size: 16,weight: .bold))
                            .foregroundColor(Color.black)
                    }
                    Spacer()
                    Button(action: {self.三维去除.toggle()}) {
                        Text("三维去除")
                            .font(.system(size: 16,weight: .bold))
                            .foregroundColor(Color.black)
                    }
                }
                .frame(width: 250,height: 50)
                Image("图像3d")
                    
            }
        }
        .offset(y:200)
    }
}

struct ThreeD_Previews: PreviewProvider {
    static var previews: some View {
        ThreeD()
    }
}

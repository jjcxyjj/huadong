//
//  Dynamic.swift
//  pro 1
//
//  Created by a on 2020/7/26.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI

struct Dynamic: View {
    @State var 液态动画 = false
    @State var 骨骼动画 = false
    @State var 粒子动画 = false

    var body: some View {
       ZStack {
           Color(#colorLiteral(red: 1, green: 0.9233211875, blue: 0.7992901206, alpha: 0))
                .frame(width: 500,height: 500)
            VStack {
                HStack {
                    Button(action: {self.液态动画.toggle()}) {
                        Text("液态动画")
                        .font(.system(size: 16,weight: .bold))
                            .foregroundColor(Color.black)
                    }
                    Spacer()
                    Button(action: {self.骨骼动画.toggle()}) {
                        Text("骨骼动画")
                            .font(.system(size: 16,weight: .bold))
                            .foregroundColor(Color.black)
                    }
                    Spacer()
                    Button(action: {self.粒子动画.toggle()}) {
                        Text("粒子动画")
                            .font(.system(size: 16,weight: .bold))
                            .foregroundColor(Color.black)
                    }
                }
                .frame(width: 250,height: 50)
               Image("动态化")
                    
            }
        }
        .offset(y:200)
    }
}

struct Dynamic_Previews: PreviewProvider {
    static var previews: some View {
        Dynamic()
    }
}


//
//  DataInteractive.swift
//  CultureAnimation
//
//  Created by 董玉博 on 2020/7/21.
//  Copyright © 2020 董玉博. All rights reserved.
//

///#此文件代码仅用于学习！！！不是app代码！！！
import SwiftUI
///循环动图
struct LearnView: View {
    @State var flag = false
    @State var size: CGFloat = 2
    @State var xp: CGFloat = -200
    @State var yp: CGFloat = -200
    @State var zp: CGFloat = 0
    var repeatingAnimation: Animation {
              Animation.linear(duration: 1)
              .repeatForever()
       }
        var body: some View {
           ZStack
               {
                Text("您好，我会动耶")
                    .padding(.all, 19.0)
                        .scaleEffect(size)
                .offset(x: xp, y: yp)
                        .onAppear() {
                            withAnimation(self.repeatingAnimation) {
//                                self.size = 2
                                
                                self.xp = 200 + self.zp
                                    self.yp = 200 - self.zp
                                self.zp = 50
                                
                                
                            }
                        }
                }
        }
}
struct Learn_Previews: PreviewProvider {
    static var previews: some View {
        LearnView()
    }
}

struct L : Identifiable{
    var id = UUID()
    
    
    var i : Int
}
let l = L(i: 1)



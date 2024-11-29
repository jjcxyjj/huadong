//
//  News.swift
//  pro 1
//
//  Created by a on 2020/7/26.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI

struct News: View {
    @State var solo_envelope = false
    @State var system_new = false
    @State var my_new = false
    @State var feedback = false
    
    
    var body: some View {
        VStack {
            ZStack {
                Image("编辑界面")
                    .resizable()
                    .frame(width: 400,height: 420)
                    .rotationEffect(.degrees(90))
                Button(action: {self.system_new.toggle()}) {
                    Image("系统消息")
                        
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 120,height:300)
                    }
                    .offset(x: -116)
                    Button(action: {self.my_new.toggle()}) {
                    Image("我的消息")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 120,height:300 )
                        
                    }
                    .offset(x: 4)
                    Button(action: {self.feedback.toggle()}) {
                    Image("问题反馈")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 120,height:300 )
                        
                    }
                    .offset(x: 124)
                }
            
            Button(action: {self.solo_envelope.toggle()}) {
                Image("solo_envelope")
                    .renderingMode(.original)
                    .frame(width: 100,height: 10)
            }
        
        Spacer()
        }
    }
}

struct News_Previews: PreviewProvider {
    static var previews: some View {
        News()
    }
}

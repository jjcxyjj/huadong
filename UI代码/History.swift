//
//  History.swift
//  pro 1
//
//  Created by a on 2020/7/26.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI

struct History: View {
    @State var solo_clock = false
    @State var find_record = false
    @State var look_record = false
    @State var tool_record = false
    @State var down_record = false
    
    var body: some View {
        VStack {
            ZStack {
                Image("编辑界面")
                    .resizable()
                    .frame(width: 400,height: 420)
                    .rotationEffect(.degrees(90))
                Color.orange.opacity(0.3)
                    .frame(width: 348,height: 258)
                    .offset(y: -1)
                Image("历史记录")
                    .scaleEffect(x: 0.8, y: 0.6)
                
                ZStack {
                    Image("八卦阵")
                        .scaleEffect(0.47)
                        .offset(x: -100,y: -65)
                    Image("八卦阵")
                        .scaleEffect(0.47)
                        .offset(x: 100,y: -65)
                    Image("八卦阵")
                        .scaleEffect(0.47)
                        .offset(x: -100,y: 65)
                    Image("八卦阵")
                        .scaleEffect(0.47)
                        .offset(x: 100,y: 65)
                }
                
                
                Button(action: {self.find_record.toggle()}) {
                    Image("搜索记录")
                        .renderingMode(.original)
                        .scaleEffect(0.47)
                        .frame(width: 60,height:60)
                }
               .offset(x:100,y:-65)
                Button(action: {self.look_record.toggle()}) {
                   Image("浏览记录")
                       .renderingMode(.original)
                       .scaleEffect(0.47)
                       
               }
               .frame(width: 60,height:60)
               .offset(x:-100,y:-65)
                
                Button(action: {self.tool_record.toggle()}) {
                    Image("操作记录")
                        .renderingMode(.original)
                        .scaleEffect(0.47)
                        
                }
                .frame(width: 60,height:60)
                .offset(x:100,y:65)
                
                Button(action: {self.down_record.toggle()}) {
                    Image("下载记录")
                        .renderingMode(.original)
                        .scaleEffect(0.47)

                }
                .frame(width: 60,height:60)
                .offset(x:-100,y:65)
            }
            
            Button(action: {self.solo_clock.toggle()}) {
                Image("solo_clock")
                    .renderingMode(.original)
                    .frame(width: 100,height: 10)
            }
        
        Spacer()
        }
    }
}

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}

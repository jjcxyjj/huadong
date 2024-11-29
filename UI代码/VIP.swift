//
//  VIP.swift
//  pro 1
//
//  Created by a on 2020/7/26.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI

struct VIP: View {
    @State var solo_person = false
    @State var edit = false
    @State var nickname = false
    @State var viewfinder = false
    @State var proof = false
    @State var money = false
    
    var body: some View {
        VStack {
            ZStack {
                Image("编辑界面")
                    .resizable()
                    .frame(width: 400,height: 420)
                    .rotationEffect(.degrees(90))
                HStack {
                    VStack {
                        Image("person")
                            .scaleEffect(2)
                            .opacity(0.7)
                        Spacer()
                        Text("昵称")
                            .foregroundColor(Color.black)
                        Spacer()
            
                    }
                    Spacer()
                    Button(action: {self.edit.toggle()}) {
                        Text("编辑资料")
                            .frame(width: 120,height: 45)
                            .background(Color.black.opacity(0.7))
                            .clipShape(RoundedRectangle(cornerRadius: 20,style:.continuous))
                            .font(.system(size: 20,weight: .bold, design: .rounded))
                            .foregroundColor(Color.white)
                    }
                    .offset(x: -10)
                    Button(action: {self.viewfinder.toggle()}) {
                        Image("viewfinder_normal")
                            .renderingMode(.original)
                            .scaleEffect(1.3)
                            .frame(width: 20,height: 20)
                    }
                }
                .frame(width : 300,height: 80)
                .padding()
                .offset(y:-60)
                
                HStack {
                    Button(action: {self.viewfinder.toggle()}) {
                        Text("我关注的")
                        .font(.system(size: 20,weight: .bold, design: .rounded))
                        .foregroundColor(Color.black)
                    }
                    Text("10")
                    .font(.system(size: 20,weight: .bold, design: .rounded))
                    Spacer()
                    Button(action: {self.viewfinder.toggle()}) {
                        Text("关注我的")
                        .font(.system(size: 20,weight: .bold, design: .rounded))
                        .foregroundColor(Color.black)
                    }
                    Text("0")
                    .font(.system(size: 20,weight: .bold, design: .rounded))
                }
                .frame(width :250,height: 50)
                .offset(x: -40)
                
               
                    Button(action: {self.proof.toggle()}) {
                        Text("个人认证")
                        .font(.system(size: 24,weight: .bold, design: .rounded))
                        .foregroundColor(Color.white)
                    }
                    .frame(width: 340,height:50)
                    .background(Color.black.opacity(0.7))
                    .offset(x: 0,y: 50)
                    Image("rank_proof")
                        .scaleEffect(1.7)
                        .offset(x: 90,y: 50)
                Button(action: {self.money.toggle()}) {
                  Text("会员等级")
                  .font(.system(size: 24,weight: .bold, design: .rounded))
                    .foregroundColor(Color.black)
                }
              .frame(width: 340,height:50)
              .background(Color.yellow.opacity(0.2))
              .offset(x: 0,y: 102)
                Image("money")
                    .scaleEffect(0.5)
                    .offset(x: 90,y: 100)
                
            }
            
            
            
            Button(action: {self.solo_person.toggle()}) {
                Image("solo_person")
                    .renderingMode(.original)
                    .frame(width: 100,height: 10)
            }
        
        Spacer()
        }
        
    }
}

struct VIP_Previews: PreviewProvider {
    static var previews: some View {
        VIP()
    }
}

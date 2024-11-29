//
//  LaunchScreen.swift
//  pro 1
//
//  Created by a on 2020/7/31.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI

struct LaunchScreen: View {
    @State var show1 = false
    @State var show2 = false
    @State var isDragging = false
    @State var draw  = CGSize.zero
    
    var body: some View {
        ZStack {
            LaunchView()
                .onTapGesture {
                    self.show2.toggle()
            }
            ZStack {
                Color(#colorLiteral(red: 0.0470514074, green: 0.0470629707, blue: 0.04704748839, alpha: 1))
                    .edgesIgnoringSafeArea(.all)
                StartPlayer()
                    .frame(width:500,height: 500)
                    .scaleEffect(show1 ? 0.01:0.75)
                    .edgesIgnoringSafeArea(.all)
        
                Color.white
                    .opacity(show1 ? 1: 0)
                Image("主页背景")
                    .scaleEffect(1.2)
                    .shadow(color:Color.black.opacity(0.2),radius:20,x:0,y:20)
                    .shadow(color:Color.black.opacity(0.1),radius:10,x:0,y:10)
                    .frame(width: 415,height: 800)
                    .offset(y: -50)
                    .opacity(show1 ? 1:0)
                    .animation(.easeInOut(duration: 0.5))
                    .rotation3DEffect(Angle(degrees: 5), axis: (x: draw.width, y:draw.height, z: 0))
                        .scaleEffect(isDragging ? 0.8: 1)
                        .animation(
                            .timingCurve(0.2, 0.8, 0.2, 1,duration: 0.8)
                    )
                        .gesture(
                            DragGesture().onChanged{ value in
                                self.draw = value.translation
                                self.isDragging = false
                            }
                            .onEnded{ value in
                                self.draw = .zero
                            }
                    )
                Image("小仙鹤1")
                    .frame(width: 150,height: 150)
                    .offset(x:show1 ? -50: -100,y:show1 ? -320:-700)
                    .animation(.easeInOut(duration: 1))
                .rotation3DEffect(Angle(degrees: 5), axis: (x: draw.width, y:draw.height, z: 0))
                    .scaleEffect(isDragging ? 1.5: 1)
                    .animation(
                        .timingCurve(0.2, 0.8, 0.2, 1,duration: 0.8)
                )
                    .gesture(
                        DragGesture().onChanged{ value in
                            self.draw = value.translation
                            self.isDragging = false
                        }
                        .onEnded{ value in
                            self.draw = .zero
                        }
                )
                Image("小仙鹤2")
                    .frame(width: 150,height: 150)
                    .offset(x:show1 ? -50: -500,y:show1 ? 120: 20)
                    .animation(.easeInOut(duration: 1))
                .rotation3DEffect(Angle(degrees: 5), axis: (x: draw.width, y:draw.height, z: 0))
                    .scaleEffect(isDragging ? 1.3: 1)
                    .animation(
                        .timingCurve(0.2, 0.8, 0.2, 1,duration: 0.8)
                )
                    .gesture(
                        DragGesture().onChanged{ value in
                            self.draw = value.translation
                            self.isDragging = false
                        }
                        .onEnded{ value in
                            self.draw = .zero
                        }
                )
                Button(action: {self.show2.toggle()}) {
                    Image("查看索引" )
                    .renderingMode(.original)
                    .brightness(show1 ? 0: -1)
                }
                .offset(y: 300)
                .animation(.easeInOut(duration: 1))
                .rotation3DEffect(Angle(degrees: 5), axis: (x: draw.width, y:draw.height, z: 0))
                    .scaleEffect(isDragging ? 2: 1)
                    .animation(
                        .timingCurve(0.2, 0.8, 0.2, 1,duration: 0.5)
                )
                    .gesture(
                        DragGesture().onChanged{ value in
                            self.draw = value.translation
                            self.isDragging = false
                        }
                        .onEnded{ value in
                            self.draw = .zero
                        }
                )
                Button(action: {self.show1.toggle()}) {
                    Image("进入画动")
                    .renderingMode(.original)
                    .brightness(1)
                }
                .offset(y: 300)
                .opacity(show1 ? 0.1 : 1)
                .animation(.easeInOut(duration: 1))
                
                Image("App图标")
                    .scaleEffect(show1 ? 0.4:0.01)
                    .offset(x: 8,y: -106)
                 .animation(.easeInOut(duration: 1))
                .rotation3DEffect(Angle(degrees: 5), axis: (x: draw.width, y:draw.height, z: 0))
                    .scaleEffect(isDragging ? 2: 1)
                    .animation(
                        .timingCurve(0.2, 0.8, 0.2, 1,duration: 0.5)
                )
                    .gesture(
                        DragGesture().onChanged{ value in
                            self.draw = value.translation
                            self.isDragging = false
                        }
                        .onEnded{ value in
                            self.draw = .zero
                        }
                )
            }
            .opacity(show2 ? 0.01: 1)
        }
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}

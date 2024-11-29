//
//  Controller.swift
//  pro 1
//
//  Created by a on 2020/7/24.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI

struct Tools: View {
    @State var show1  = false
    @State var show2  = false
    @State var show3  = false
    @State var show4  = false
    @State var photo = false
    @State var exist = false
    @State var window = false
    @State var water = false
    @State var bone = false
    @State var level = false
    @State var aspect = false
    @State var write = false
    @State var music = false
    
    var body: some View {
        ZStack {
            ZStack {
                Color(#colorLiteral(red: 1, green: 0.9233211875, blue: 0.7992901206, alpha: 1))
                Image("步骤1")
                    .resizable()
                    .frame(width : show1 ? 1000: 200,height: show1 ? 1500: 200)
                    .offset(x: show1 ? 0 :-100,y: show1 ? 0:350)
                    .opacity(show1 ? 0.2: 1)
                    .animation(.easeIn(duration : 0.5))
                    .opacity(show2||show3||show4 ? 0: 1 )
                Image("步骤2")
                    .resizable()
                    .frame(width : show2 ? 1000: 200,height: show2 ? 1500: 200)
                    .offset(x: show2 ? 0 :100,y: show2 ? 0:140)
                    .opacity(show2 ? 0.2: 1)
                    .animation(.easeIn(duration : 0.5))
                    .opacity(show1||show3||show4 ? 0: 1 )
                Image("步骤3")
                    .resizable()
                    .frame(width : show3 ? 1000: 200,height: show3 ? 1500: 200)
                    .offset(x: show3 ? 0 :-100,y: show3 ? 0:-50)
                    .opacity(show3 ? 0.2: 1)
                    .animation(.easeIn(duration : 0.5))
                    .opacity(show1||show2||show4 ? 0: 1 )
                Image("步骤4")
                    .resizable()
                    .frame(width : show4 ? 1000: 200,height: show4 ? 1500: 200)
                    .offset(x: show4 ? 0 :-30,y: show4 ? 0:-270)
                    .opacity(show4 ? 0.2: 1)
                    .animation(.easeIn(duration : 0.5))
                    .opacity(show1||show3||show2 ? 0: 1 )
                Image("主界面地图")
                    .resizable()
                    .frame(width : 500,height : 1000)
                    .aspectRatio(contentMode:.fit)
                    .opacity(show1||show2||show3||show4  ? 0: 1)
                
                ZStack {
                    HStack {
                        Image("门1左")
                            .scaleEffect(0.2)
                            .frame(width: 50, height : 100)
                            .offset(x: show1 ? 2:-300)
                            .animation(.easeIn(duration : 1))
                            .offset(x: photo||exist ? -50: 2)
                            .rotation3DEffect(Angle(degrees:60), axis: (x: 0, y:photo||exist ? 60 : 0, z: 0))
                            
                           
                        Image("门1右")
                            .scaleEffect(0.2)
                            .frame(width: 50, height : 100)
                            .offset(x: show1 ? -2: 300)
                            .animation(.easeIn(duration : 1))
                            .offset(x: photo||exist ? 50: -2)
                            .rotation3DEffect(Angle(degrees:60), axis: (x: 0, y:photo||exist ? -60 : 0, z: 0))
                            
                    }
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(show1 ? 5: 1)
    //                .animation(
    //                       Animation
    //                       .default
    //                       .delay(0.5)
    //                   )
                    
                    Image("太极1")
                    .frame(width: 400, height: 400)
                        .opacity(show1 ? 1: 0)
                        
                        //.rotationEffect(Angle.degrees(180))
                        .offset(y: show1 ? 0 : -600)
                        .scaleEffect(show1 ? 1: 0.4)
                        .animation(.easeInOut(duration: 1))
                        .offset(x: photo||exist ? 400: 0,y: photo||exist ? -870: 0)
                        .scaleEffect(photo||exist ? 0.35 : 1)
                        .animation(.easeInOut(duration: 1))
                    Button(action: {self.photo.toggle()}) {
                          Text("本地相册")
                              
                              .font(.system(size: 20,weight: .bold, design: .rounded))
                              .fontWeight(.bold)
                              .foregroundColor(Color.black)
                              .frame (width :100,height: 30)
                    }
                    .offset(x: -60,y:30)
                    .opacity(show1 ? 1: 0)
                    .offset(x: photo||exist ? 250: 0,y: photo||exist ? -520: 0)
                    .scaleEffect(photo||exist ? 0.6 : 1)
                    .animation(.easeInOut(duration: 1))
                    
                    Button(action: {self.exist.toggle()}) {
                          Text("拍照上传")
                              .font(.system(size: 20,weight: .bold, design: .rounded))
                              .fontWeight(.bold)
                              .foregroundColor(Color.white)
                              .frame (width :100,height: 30)
                    }
                    .offset(x: 60,y:-30)
                    .opacity(show1 ? 1: 0)
                    .offset(x: photo||exist ? 200: 0,y: photo||exist ? -495: 0)
                    .scaleEffect(photo||exist ? 0.6 : 1)
                    .animation(.easeInOut(duration: 1))
                    
                
                    HStack {
                        Image("门2左")
                            .scaleEffect(0.2)
                            .frame(width: 50, height : 100)
                            .offset(x: show2 ? 2:-300)
                            .animation(.easeIn(duration : 1))
                            .offset(x: water||bone ? -50: 2)
                            .rotation3DEffect(Angle(degrees:60), axis: (x: 0, y:water||bone ? 60 : 0, z: 0))
                            
                           
                        Image("门2右")
                            .scaleEffect(0.2)
                            .frame(width: 50, height : 100)
                            .offset(x: show2 ? -2: 300)
                            .animation(.easeIn(duration : 1))
                            .offset(x: water||bone ? 50: -2)
                            .rotation3DEffect(Angle(degrees:60), axis: (x: 0, y:water||bone ? -60 : 0, z: 0))
                            
                    }
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(show2 ? 5: 1)
                    
                   
                        Image("太极2")
                        .frame(width: 400, height: 400)
                            .opacity(show2 ? 1: 0)
                            
                            //.rotationEffect(Angle.degrees(180))
                            .offset(y: show2 ? 0 : -600)
                            .scaleEffect(show2 ? 1: 0.4)
                            .animation(.easeInOut(duration: 1))
                            .offset(x: water||bone ? 400: 0,y: water||bone ? -870: 0)
                            .scaleEffect(water||bone ? 0.35 : 1)
                            .animation(.easeInOut(duration: 1))
                        
                        Button(action: {self.water.toggle()}) {
                              Text("液态动画")
                                  
                                  .font(.system(size: 20,weight: .bold, design: .rounded))
                                  .fontWeight(.bold)
                                  .foregroundColor(Color.black)
                                  .frame (width :100,height: 30)
                        }
                        .offset(x: -60,y:30)
                        .opacity(show2 ? 1: 0)
                        .offset(x: water||bone ? 250: 0,y: water||bone ? -520: 0)
                        .scaleEffect(water||bone ? 0.6 : 1)
                        .animation(.easeInOut(duration: 1))
                        
                        Button(action: {self.bone.toggle()}) {
                              Text("骨骼动画")
                                  .font(.system(size: 20,weight: .bold, design: .rounded))
                                  .fontWeight(.bold)
                                  .foregroundColor(Color.white)
                                  .frame (width :100,height: 30)
                        }
                        .offset(x: 60,y:-30)
                        .opacity(show2 ? 1: 0)
                        .offset(x: water||bone ? 200: 0,y: water||bone ? -495: 0)
                        .scaleEffect(water||bone ? 0.6 : 1)
                        .animation(.easeInOut(duration: 1))

                    ZStack {
                        HStack {
                            Image("门3左")
                                .scaleEffect(0.2)
                                .frame(width: 50, height : 100)
                                .offset(x: show3 ? 2:-300)
                                .animation(.easeIn(duration : 1))
                                .offset(x: level||aspect ? -50: 2)
                                .rotation3DEffect(Angle(degrees:60), axis: (x: 0, y:level||aspect ? 60 : 0, z: 0))
                            Image("门3右")
                                .scaleEffect(0.2)
                                .frame(width: 50, height : 100)
                                .offset(x: show3 ? -2: 300)
                                .animation(.easeIn(duration : 1))
                                .offset(x: level||aspect ? 50: -2)
                                .rotation3DEffect(Angle(degrees:60), axis: (x: 0, y:level||aspect ? -60 : 0, z: 0))
                                
                        }
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(show3 ? 5: 1)
                        
                        Image("太极3")
                        .frame(width: 400, height: 400)
                            .opacity(show3 ? 1: 0)
                            
                            //.rotationEffect(Angle.degrees(180))
                            .offset(y: show3 ? 0 : -600)
                            .scaleEffect(show3 ? 1: 0.4)
                            .animation(.easeInOut(duration: 1))
                            .offset(x: level||aspect ? 400: 0,y: level||aspect ? -870: 0)
                            .scaleEffect(level||aspect ? 0.35 : 1)
                            .animation(.easeInOut(duration: 1))
                        
                        Button(action: {self.aspect.toggle()}) {
                              Text("视角切换")
                                  
                                  .font(.system(size: 20,weight: .bold, design: .rounded))
                                  .fontWeight(.bold)
                                  .foregroundColor(Color.black)
                                  .frame (width :100,height: 30)
                        }
                        .offset(x: -60,y:30)
                        .opacity(show3 ? 1: 0)
                        .offset(x: level||aspect ? 250: 0,y: level||aspect ? -520: 0)
                        .scaleEffect(level||aspect ? 0.6 : 1)
                        .animation(.easeInOut(duration: 1))
                        
                        Button(action: {self.level.toggle()}) {
                              Text("层次调整")
                                  .font(.system(size: 20,weight: .bold, design: .rounded))
                                  .fontWeight(.bold)
                                  .foregroundColor(Color.white)
                                  .frame (width :100,height: 30)
                        }
                        .offset(x: 60,y:-30)
                        .opacity(show3 ? 1: 0)
                        .offset(x: level||aspect ? 200: 0,y: level||aspect ? -495: 0)
                        .scaleEffect(level||aspect ? 0.6 : 1)
                        .animation(.easeInOut(duration: 1))
                        
                        
                        
                        HStack {
                            Image("门4左")
                                .scaleEffect(0.2)
                                .frame(width: 50, height : 100)
                                .offset(x: show4 ? 2:-300)
                                .animation(.easeIn(duration : 1))
                                .offset(x: write||music  ? -50: 2)
                                .rotation3DEffect(Angle(degrees:60), axis: (x: 0, y:write||music  ? 60 : 0, z: 0))
                                
                               
                            Image("门4右")
                                .scaleEffect(0.2)
                                .frame(width: 50, height : 100)
                                .offset(x: show4 ? -2: 300)
                                .animation(.easeIn(duration : 1))
                                .offset(x: write||music  ? 50: -2)
                                .rotation3DEffect(Angle(degrees:60), axis: (x: 0, y:write||music  ? -60 : 0, z: 0))
                                
                        }
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(show4 ? 5: 1)
                        
                        Image("太极4")
                        .frame(width: 400, height: 400)
                            .opacity(show4 ? 1: 0)
                            
                            //.rotationEffect(Angle.degrees(180))
                            .offset(y: show4 ? 0 : -600)
                            .scaleEffect(show4 ? 1: 0.4)
                            .animation(.easeInOut(duration: 1))
                            .offset(x: write||music ? 400: 0,y: write||music ? -870: 0)
                            .scaleEffect(write||music ? 0.35 : 1)
                            .animation(.easeInOut(duration: 1))
                        
                        Button(action: {self.music.toggle()}) {
                              Text("添加音频")
                                  
                                  .font(.system(size: 20,weight: .bold, design: .rounded))
                                  .fontWeight(.bold)
                                  .foregroundColor(Color.black)
                                  .frame (width :100,height: 30)
                        }
                        .offset(x: -60,y:30)
                        .opacity(show4 ? 1: 0)
                        .offset(x: write||music ? 250: 0,y: write||music ? -520: 0)
                        .scaleEffect(write||music ? 0.6: 1)
                        .animation(.easeInOut(duration: 1))
                        
                        Button(action: {self.write.toggle()}) {
                              Text("添加字幕")
                                  .font(.system(size: 20,weight: .bold, design: .rounded))
                                  .fontWeight(.bold)
                                  .foregroundColor(Color.white)
                                  .frame (width :100,height: 30)
                        }
                        .offset(x: 60,y:-30)
                        .opacity(show4 ? 1: 0)
                        .offset(x: write||music ? 200: 0,y: write||music ? -495: 0)
                        .scaleEffect(write||music ? 0.6 : 1)
                        .animation(.easeInOut(duration: 1))
                    }
                    
                }
                
                ZStack {
                    Button(action: {self.show1.toggle()}) {
                            Text("图像分层")
                                
                                .font(.system(size: 20,weight: .bold, design: .rounded))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .frame (width :100,height: 30)
                                //.offset(y:-3)
                                .background(Image("按钮1")
                                .renderingMode(.original))
                                
                        }
                        .offset(x: show1 ? -40: -105,y: show1 ? -150:250 )
                        .scaleEffect(show1 ? 2:1)
                        .opacity(show2||show3||show4 ? 0: 1 )
                    
                    Button(action: {self.show2.toggle()}) {
                            Text("图像动画")
                                
                                .font(.system(size: 20,weight: .bold, design: .rounded))
                                .fontWeight(.semibold)
                                 .foregroundColor(Color.white)
                                .frame (width :100,height: 30)
                                .background(
                                    Image("按钮1")
                                .renderingMode(.original))
                        }
                        .offset(x: show2 ? -40:105,y:show2 ? -150:40)
                        .scaleEffect(show2 ? 2:1)
                        .opacity(show1||show3||show4 ? 0: 1 )
                        
                    
                        Button(action: {self.show3.toggle()}) {
                            Text("图像3D")
                                
                                .font(.system(size: 20,weight: .bold, design: .rounded))
                                .fontWeight(.semibold)
                                 .foregroundColor(Color.white)
                                .frame (width :100,height: 30)
                                .background(Image("按钮1")
                                .renderingMode(.original))
                        }
                        .offset(x: show3 ? -40:-100,y:show3 ? -150:-150)
                        .scaleEffect(show3 ? 2:1)
                        .opacity(show1||show2||show4 ? 0: 1 )
                        
                        Button(action: {self.show4.toggle()}) {
                            Text("图像渲染")
                                
                                .font(.system(size: 20,weight: .bold, design: .rounded))
                                .fontWeight(.semibold)
                                 .foregroundColor(Color.white)
                                .frame (width :100,height: 30)
                                .background(Image("按钮1")
                                .renderingMode(.original))
                        }
                        .offset(x:show4 ? -40:-30,y: show4 ? -150:-370)
                        .scaleEffect(show4 ? 2:1)
                        .opacity(show1||show2||show3 ? 0: 1 )
                }
                
            }
            Depart()
                 .offset(y:photo||exist ? 0: 500)
                 .animation(.easeInOut(duration: 1))
                 .onTapGesture {
                    self.photo.toggle()
                    self.exist.toggle()
                    self.show1.toggle()
                
            }
             Dynamic()
                  .offset(y:water||bone ? 0: 500)
                  .animation(.easeInOut(duration: 1))
                  .onTapGesture {
                    self.water.toggle()
                    self.bone.toggle()
                    self.show2.toggle()
             }
             ThreeD()
                 .offset(y: aspect||level ? 0: 500)
                  .animation(.easeInOut(duration: 1))
                  .onTapGesture {
                    self.level.toggle()
                    self.aspect.toggle()
                    self.show3.toggle()
             }
             Optimize()
                .offset(y:write||music ? 0: 500)
                .animation(.easeInOut(duration: 1))
                .onTapGesture {
                    self.write.toggle()
                    self.music.toggle()
                    self.show4.toggle()
             }
        }
    }
}

struct Controller_Previews: PreviewProvider {
    static var previews: some View {
        Tools()
    }
}

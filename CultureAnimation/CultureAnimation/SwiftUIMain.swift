//
//  SwiftUIMain.swift
//  CultureAnimation
//
//  Created by 董玉博 on 2020/7/21.
//  Copyright © 2020 董玉博. All rights reserved.
//

import SwiftUI

struct SwiftUIMain: View {
    @State var H = phone.H
    @State var W = phone.W
    @State var select = 2
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State var turning = 1
    
    var theVideos = videos
    
   
    
    var body: some View {
        ZStack {
            
//            Image("squareSymbol")
//                .scaleEffect(0.5)
//                .shadow(color: .blue, radius: 3)
//                .offset(y:-58)
//                .blur(radius: 3)
            VStack {
                    NavigationView {
                       
                        HStack {
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "person")
                                .foregroundColor(.gray)
                            }
                            .frame(width: W/4)
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: W/2, height: 25)
                                    .foregroundColor(.secondary)
                                    .opacity(0.2)
                                HStack {
                                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.gray)
                                        .font(.system(size:14))
                                    }
                                    Text("Search                     ")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                    Image(systemName: "delete.left")
                                        .foregroundColor(.gray)
                                    }
                                }
                            }
                            
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "envelope")
                                .foregroundColor(.gray)
                            }
                            .frame(width: W/4)
                        }
                        .navigationBarTitle("",displayMode: .inline)
//                                .navigationBarItems(leading: Button(action:{}){Text("Button")})
                    }
                    .frame(height: 80)
                    .foregroundColor(Color.blue)
                    .onAppear(){
                        UINavigationBar.appearance().barTintColor = .white
                        
                    
                        }
                    .offset(y: 18)
                    .opacity(0.8)
                
                    Divider()
                
               
                    ZStack {
                        ScrollView(.horizontal,showsIndicators: false) {
                                     ZStack {
                                        if turning == 1 {
                                                Image("turn1")
                                                    .resizable()
                                                    .frame(width: W*1.1)
                                                    .aspectRatio(contentMode: .fill)
//                                                    .offset(x:25)
                                                Text("轮播图!")
                                                    .font(.body)
                                                    .fontWeight(.heavy)
                                                    .frame(width: W,height: H/5,alignment: .bottomLeading )
                                                    .foregroundColor(.white)
                                                    .shadow(radius: 10, x: 0, y: 0)
                                                    .offset(x:30)
                                            
                                            
                                        }
                                        if turning == 2 {
                                            Image("turn2")
                                                .resizable()
                                                .frame(width: W*1.1)
                                                .aspectRatio(contentMode: .fill)
//                                                .offset(x:25)
                                            Text("轮播图!")
                                                .font(.body)
                                                .fontWeight(.heavy)
                                                .frame(width: W,height: H/5,alignment: .bottomLeading )
                                                .foregroundColor(.white)
                                                .shadow(radius: 10, x: 0, y: 0)
                                                .offset(x:30)
                                              
                                        }
                                        if turning == 3 {
                                            Image("turn3")
                                                .resizable()
                                                .frame(width: W*1.1)
                                                .aspectRatio(contentMode: .fill)
//                                                .offset(x:25)
                                            Text("轮播图!")
                                                .font(.body)
                                                .fontWeight(.heavy)
                                                .frame(width: W,height: H/5,alignment: .bottomLeading )
                                                .foregroundColor(.white)
                                                .shadow(radius: 10, x: 0, y: 0)
                                                .offset(x:30)
                                             
                                        }
                                    
                                    
                                    HStack {
                                        Button(action: {self.turning = 1}) {
                                            Circle()
                                            .scaleEffect(0.95)
                                        }
                                        .frame(width: 10, height:10)
                                        .foregroundColor(turning == 1 ? Color.blue : Color.white)
                                        Button(action: {self.turning = 2}) {
                                            Circle()
                                            .scaleEffect(0.95)
                                        }
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(turning == 2 ? Color.blue : Color.white)
                                        Button(action: {self.turning = 3}) {
                                            Circle()
                                            .scaleEffect(0.95)
                                        }
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(turning == 3 ? Color.blue : Color.white)
                                    }
                                    .frame(height: H/5, alignment: .bottom)
                                }
                                .frame(height: H/4,alignment: .center)
                            }
                        }
                    Divider()
                
                
                    HStack {
                        Button(action: {self.select = 1}) {
                            VStack {
                                Text("素材")
                                Capsule()
                                .frame(height: 2)
                                    .foregroundColor( select == 1 ? .red : .gray)
                            }
                        }
                        .frame(width: W/4)
                       
                        Button(action: {self.select = 2}) {
                            VStack {
                                Text("视频广场")
                                Capsule()
                                .frame(height: 2)
                                 .foregroundColor(select == 2 ? .red : .gray)
                            }
                        }
                        .frame(width: W/4)
                        Button(action: {self.select = 3}) {
                            VStack {
                                Text("模版")
                                Capsule()
                                .frame(height: 2)
                                 .foregroundColor(select == 3 ? .red : .gray)
                            }
                        }
                        .frame(width: W/4)
                    }
                    .foregroundColor(.red)
                   
                
                if select == 1
                {
                    ListedView1()
                }
                if select == 2
                {
                    ListedView2()
                }
                if select == 3
                {
                    ListedView3()
                }
                
                
            }
           
               
            
           
            
            VStack {
                HStack {
                    
                    ScrollView(.horizontal,showsIndicators: false) {
                        Text(" ")
                            .padding(.vertical, 40)
                            .frame(width: W, alignment: .center)
                    }
                    .padding(.top, H - 140)
                }

                Divider()
                    .frame(height: 1)

                BottomView()//底部窗口栏



            }
            
        }
        .onReceive(Timer.publish(every: 3, on: .main, in: .common).autoconnect())
        {   _ in
            
            self.turning = (self.turning + 1) % 3 + 1
        }
    
    }
}

struct SwiftUIMain_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIMain()
    }
}

struct BottomView: View {
    @State var H = phone.H
    @State var W = phone.W
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                .frame(width: W + 50, height: H / 10)
                .shadow(color: Color.blue, radius: 4, x: 0, y: -2)
            
            Rectangle()
                .frame(width: W + 50, height: H / 10)
                .foregroundColor(.blue)
                .opacity(0.5)
       
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                ZStack {
                    Circle()
                        .padding(.bottom, 6.0)
                        .offset(y: -30)
                        .foregroundColor(.white)
                        .shadow(radius: 5,  y: 5)
                    
                    RadialGradient(gradient: Gradient(colors: [Color.white, Color.blue]), center: .center, startRadius: 10, endRadius: 50)
                        .clipShape(Circle())
                        .scaleEffect(0.9)
                        .opacity(0.7)
                        .offset(y: -33)
                    
                    
                   
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "plus")
                        .foregroundColor(.purple)
                        .font(.system(size:40))
                        .shadow(color: .blue, radius: 2, x: -2 ,y: -2)
                        .opacity(1)
                    }
                    .offset(y: -33)
                               
                }
        }
            
            
        }
        .padding(.bottom, 6.0)
    }
}

struct ListedView1: View {
    @State var H = phone.H
    @State var W = phone.W
    var body: some View {
        List(0 ..< 5) { item in
            
            ZStack {
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        ZStack
                            {
                                Image("theSky")
                                .frame(width: self.W*5/11, height: self.H/6)
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(8)
                                
                                Text("Title")
                                    .frame(width: self.W*5/11, height: self.H/6, alignment: .bottomLeading)
                        }
                        
                        ZStack
                            {
                                Image("theSky")
                                .frame(width: self.W*5/11, height: self.H/6)
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(8)
                                
                                Text("Title")
                                    .frame(width: self.W*5/11, height: self.H/6, alignment: .bottomLeading)
                        }
                        
                        ZStack
                            {
                                Image("theSky")
                                .frame(width: self.W*5/11, height: self.H/6)
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(8)
                                
                                Text("Title")
                                    .frame(width: self.W*5/11, height: self.H/6, alignment: .bottomLeading)
                        }
                        
                        ZStack
                            {
                                Image("theSky")
                                .frame(width: self.W*5/11, height: self.H/6)
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(8)
                                
                                Text("Title")
                                    .frame(width: self.W*5/11, height: self.H/6, alignment: .bottomLeading)
                        }
                        
                    }
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 3, x: 5, y: 5)
                    .padding()
                    .foregroundColor(.red)
                    
                    
                }
                .background(Color.init( red: 0, green: 0, blue: 0, opacity: 0.0))
//                .resizable()
//                .aspectRatio(contentMode: .fit))
                .padding(.vertical, -14.0)
                   
                
                Circle()
                .foregroundColor(.white)
                .scaleEffect(0.3)
                .offset(x: -self.W*2/5, y: -self.H*1/20)
                .opacity(0.8)
                
               
            }
        }
    }
}

struct ListedView2: View {
    @State var H = phone.H
    @State var W = phone.W
    var body: some View {
        List(0 ..< 5) { item in
            
            ZStack {
                HStack {
                    Image("theSky")
                        .frame(width: self.W*3/5, height: self.H/5)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(8)
                    
                    
                    ZStack
                        {
                            LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                                .shadow(color: .red, radius: 5, x: 3 ,y: 3)
                            
                            LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: .leading, endPoint: .trailing)
                                .opacity(0.7)
                            
                            Rectangle()
                                .foregroundColor(.white)
                                .opacity(0.5)
                            
                            
                            VStack {
                                Text("Title")
                                    .font(.title)
                                
                                Text("Nice! sdfjglsdjgsadhgldsfjasdgsadgsdgasdgsadgwpeotx.cv")
                                    .font(.subheadline)
                                .frame(width: self.W*3/8)
                                
                            }
                            
                    }
                    
                }
                .cornerRadius(10)
                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                .padding(.vertical, -1.0)
                .foregroundColor(.red)
                .frame(width: self.W*0.8)
                
                Circle()
                    .foregroundColor(.white)
                    .scaleEffect(0.3)
                    .offset(x: -self.W*0.43, y: -self.H*1/15)
                    .opacity(0.8)
                
               
            }
           
        }
    
    }
}


struct ListedView3: View {
    @State var H = phone.H
    @State var W = phone.W
    var body: some View {
        List(0 ..< 5) { item in
            
            ZStack {
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        Image("list1")
                            .frame(width: self.W*5/11, height: self.H/6)
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(8)
                        
                        Image("list2")
                        .frame(width: self.W*5/11, height: self.H/6)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(8)
                        
                        Image("list3")
                        .frame(width: self.W*5/11, height: self.H/6)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(8)
                        
                        Image("theSky")
                        .frame(width: self.W*5/11, height: self.H/6)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(8)
                        
                    }
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 3, x: 5, y: 5)
                    .padding()
                    .foregroundColor(.red)
                    
                    
                }
                Circle()
                .foregroundColor(.white)
                .scaleEffect(0.3)
                .offset(x: -self.W*2/5, y: -self.H*1/20)
                .opacity(0.8)
                
               
            }
        }
    }
}


extension Date {
    var timeStamp : Int {
        let timeInterval = self.timeIntervalSince1970
        let timeStamp = Int(timeInterval)
        return timeStamp
    }
}

  

//
//  Log In.swift
//  pro 1
//
//  Created by a on 2020/7/26.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI

struct Log_In: View {
    @State var email = ""
    @State var password  = ""
    @State var isFocused = false
    @State var showAlert = false
    @State var alertMassage = "Something went wrong."
    @State var isLoading = false
    @State var isSuccess = false
    
    func Login(){
        self.hidekeyboard()
        self.isFocused = false
        self.isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now()+2){
            self.isLoading = false
//                           self.showAlert = true
            self.isSuccess = true
            DispatchQueue.main.asyncAfter(deadline: .now()+3){
                self.isSuccess = false
            }
        }
    }
    
    func hidekeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),to:nil,from:nil,for:nil)
    }
    
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.8325592875, green: 0.7754536867, blue: 0.7054405808, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            ZStack {
                CoverView()
                VStack {
                    HStack {
                    
                        Image(systemName: "person.crop.circle.fill")
                            .foregroundColor(Color.black.opacity(1))
                            .frame(width: 35,height: 35)
                            .background(Color.white)
                            .clipShape(Circle())
                            .frame(width: 44,height: 44)
                        TextField("Your Email".uppercased(), text: $email)
                            .keyboardType(.emailAddress)
                            .font (.subheadline)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .onTapGesture {
                                self.isFocused = true
                        }
                    }
                    .background(Image("输入"))
                    .shadow(color:Color.black.opacity(0.15),radius: 20,x:0,y:20)
                    .frame(width: 300,height: 136)
                    .padding(.horizontal)
                    .offset(y: 200)
            
                    HStack {
                        Image(systemName: "lock.fill")
                            .foregroundColor(Color.black.opacity(1))
                            .frame(width: 35,height: 35)
                            .background(Color.white)
                            .clipShape(Circle())
                            .frame(width: 44,height: 44)
                           
                            
                        SecureField("Password".uppercased(), text: $password)
                            .keyboardType(.default)
                            .font(.subheadline)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .onTapGesture {
                                self.isFocused = true
                        }
                            //.padding(.leading)
                           
                    }
                    .background(Image("输入"))
                    .shadow(color:Color.black.opacity(0.15),radius: 20,x:0,y:20)
                    .frame(width: 300,height: 136)
                    .padding(.horizontal)
                    .offset(y:150 )
                }
                .frame(width: 400,height: 300)
                .offset(y: 50)
                
                HStack {
                    Text("Forget password?")
                        .font(.headline)
                    Spacer()
                    Button(action:{
                        self.Login()
                    }){
                        Text("Log In")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20, weight: .bold))
                            .frame(width: 100,height: 50)
                            .background(Color(#colorLiteral(red: 0.2775456905, green: 0.08613153547, blue: 0.06574340165, alpha: 1)))
                            .clipShape(RoundedRectangle(cornerRadius: 20,style:.continuous))
                            .shadow(color:Color(#colorLiteral(red: 0.2775456905, green: 0.08613153547, blue: 0.06574340165, alpha: 1)).opacity(0.3),radius: 20,x:0,y:20)
                            .alert(isPresented: $showAlert){
                                Alert(title: Text("Error"), message: Text(self.alertMassage), dismissButton: .default(Text("OK")))
                        }
                    }
                }
                .frame(width: 350,height: 30)
                .padding()
                .offset(y: 380)
            }
            .offset(y:isFocused ? -220: 0)
            .animation(isFocused ? .easeInOut: nil)
            .onTapGesture {
                self.isFocused = false
                self.hidekeyboard()
            }
            if isLoading {
                LoadingView()
            }
            if isSuccess {
                SuccessView()
            }
        }
    }
}

struct Log_In_Previews: PreviewProvider {
    static var previews: some View {
        Log_In()
    }
}

struct CoverView: View {
    @State var light = false
    @State var draw  = CGSize.zero
    @State var isDragging = false
    
    var body: some View {
        ZStack {
            Image("登录页")
                .scaleEffect(1.2)
                .offset(y:-140)
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
            Image("登录文字2")
                .scaleEffect(0.7)
                .offset(y: -250)
                .offset(x: draw.width/20,y: draw.height/20)
            GeometryReader { geometry in
                Image("登录文字1")
                    .scaleEffect(0.7)
                    .offset(x: -30,y: -350)
            }
            .frame(maxWidth : 375,maxHeight : 100)
            .padding(.horizontal,16)
            .offset(x: draw.width/15,y: draw.height/15)
            Color.white.opacity(0.05)
                .frame(width: 100,height: 1000)
                .rotationEffect(Angle(degrees:60))
                .offset(x: light ? -100: 50,y: light ? -800: 550)
                
                .animation(
                    Animation
                        .linear(duration:20)
                        .repeatForever()
            )
                .onAppear{
                    self.light = true
            }
            Image("仙鹤1")
                .offset(x: 50,y:-50)
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
            Image("仙鹤2")
                .offset(x: -50)
                .rotation3DEffect(Angle(degrees: 5), axis: (x: draw.width, y:draw.height, z: 0))
                .scaleEffect(isDragging ? 2: 1)
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
        }
    }
}

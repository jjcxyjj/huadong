//
//  LaunchView.swift
//  pro 1
//
//  Created by a on 2020/7/30.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI

struct LaunchView: View {
    @State var bk = false
    @State var picture1 = false
    @State var picture2 = false
    @State var picture3 = false
    @State var picture4 = false
    @State var picture5 = false
       
       var body: some View {
           ZStack{
            
            Image("古风")
                .scaleEffect(0.9)
                .offset(x: bk ? -1440: 1440,y: -300)
                .animation(
                    Animation
                        .linear(duration:30)
                        .repeatForever()
                )
                .onAppear{
                    self.bk = true
                 }
                .edgesIgnoringSafeArea(.all)
               VStack{
                   Spacer().frame(height:30)
                   Image("画动")
                       .scaleEffect(0.4)
                       .frame(width: 150,height: 150)
                       .brightness(-1)
                        .offset(y: -300)
               }
               CarouselView(itemHeight: 400, views: [
               AnyView(
               Button(action: {self.picture1.toggle()})
               {
                   Image("标签1")
                   .renderingMode(.original)
                   .scaleEffect(0.75)
                   }
               ),
               AnyView(
               Button(action: {self.picture2.toggle()})
               {
                   Image("标签2")
                   .renderingMode(.original)
                   .scaleEffect(0.75)}
               ),
               AnyView(
               Button(action: {self.picture3.toggle()})
               {
                   Image("标签3")
                   .renderingMode(.original)
                   .scaleEffect(0.75)}
               ),
               AnyView(
               Button(action: {self.picture4.toggle()})
               {
                   Image("标签4")
                   .renderingMode(.original)
                   .scaleEffect(0.75)}
               ),
               AnyView(
               Button(action: {self.picture5.toggle()})
               {
                   Image("标签5")
                   .renderingMode(.original)
                   .scaleEffect(0.75)}
               ),
           ])
            Sign_Up()
                .scaleEffect(picture1 ? 1: 0.5)
                .opacity(picture1 ? 1: 0)
                .offset(y: picture1 ? 0: -100)
                .animation(.easeInOut(duration: 1))
                .onTapGesture {
                    self.picture1.toggle()
                 }
            Log_In()
                .scaleEffect(picture2 ? 1: 0.5)
                .opacity(picture2 ? 1: 0)
                .offset(y: picture2 ? 0: -100)
                .animation(.easeInOut(duration: 1))
                .onTapGesture {
                     self.picture2.toggle()
                 }
            TabBar()
               .scaleEffect(picture3 ? 1: 0.5)
               .opacity(picture3 ? 1: 0)
               .offset(y: picture3 ? 0: -100)
               .onTapGesture {
                    self.picture3.toggle()
                }
            Tools()
               .scaleEffect(picture4 ? 1: 0.5)
               .opacity(picture4 ? 1: 0)
               .offset(y: picture4 ? 0: -100)
               .animation(.easeInOut(duration: 1))
               .onTapGesture {
                    self.picture4.toggle()
                }
            Person()
               .scaleEffect(picture5 ? 1: 0.5)
               .opacity(picture5 ? 1: 0)
               .offset(y: picture5 ? 0: -100)
               .animation(.easeInOut(duration: 1))
               .onTapGesture {
                    self.picture5.toggle()
                }
           }
            
       }
       
    //
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}

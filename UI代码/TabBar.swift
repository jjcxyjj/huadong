//
//  TabBar.swift
//  pro 1
//
//  Created by a on 2020/8/4.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        
            TabView {
                OnboardingView().tabItem{
                    VStack {
                        Image(systemName:"paperplane")
                        Text("佳作展示")
                    }
                }
                Source().tabItem{
                    VStack {
                        Image(systemName:"scribble")
                        Text("画动素材")
                    }
                }
                UpdateList().tabItem{
                    VStack {
                        Image(systemName:"rectangle.stack.fill")
                        Text("画动模版")
                    }
                }
                VideoView().tabItem{
                    VStack {
                        Image(systemName:"play.circle.fill")
                        Text("视频广场")
                    }
                }
                
                
            }
            .edgesIgnoringSafeArea(.top)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

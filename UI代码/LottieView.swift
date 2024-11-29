//
//  LottieView.swift
//  pro 1
//
//  Created by a on 2020/7/28.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI
import  Lottie

struct LottieView:UIViewRepresentable {
    typealias UIViewType = UIView
    var filename: String
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame:.zero)
        let animationView = AnimationView()
        let animation = Animation.named(filename)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.play()
            
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview (animationView)
        
        NSLayoutConstraint.activate([animationView.widthAnchor.constraint(equalTo:view.widthAnchor),animationView.heightAnchor.constraint(equalTo:view.heightAnchor)
            ])
        return view
     }
    func updateUIView(_ uiView :UIView,context:
        UIViewRepresentableContext<LottieView>){
    }
}


//
//  pageControl.swift
//  pro 1
//
//  Created by a on 2020/7/30.
//  Copyright © 2020 AUV. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI


struct PageControl:UIViewRepresentable{
    var numberOfpages: Int
    
    @Binding var currentIndex: Int
    
    func makeUIView(context: Context) -> UIPageControl{
        let control = UIPageControl()
        control.numberOfPages = numberOfpages
        control .currentPageIndicatorTintColor = UIColor.red
        control.pageIndicatorTintColor = UIColor.black
        return control
    }
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentIndex
    }
}

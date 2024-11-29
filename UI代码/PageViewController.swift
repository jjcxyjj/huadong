//
//  PageViewControllerView.swift
//  Practice
//
//  Created by a on 2020/7/29.
//  Copyright © 2020 AUV. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

struct PageViewController: UIViewControllerRepresentable {
    var viewControllers:[UIViewController]
    @Binding var CurrentPageIndex : Int
    
    func makeUIViewController(context: Context) -> UIPageViewController{
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll, navigationOrientation: .horizontal)
        pageViewController.dataSource = context.coordinator
        pageViewController.delegate = context.coordinator
        return pageViewController
    }
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers([viewControllers[CurrentPageIndex]], direction: .forward, animated: true)
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    class Coordinator: NSObject,UIPageViewControllerDataSource,UIPageViewControllerDelegate{
        var parent: PageViewController
        init(_ pageViewController: PageViewController) {
            self.parent  = pageViewController
        }
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let index = parent.viewControllers.firstIndex(of: viewController) else {
                return nil
            }
            if index == 0 {
                return parent.viewControllers.last
            }
            return parent .viewControllers[index-1]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let index = parent.viewControllers.firstIndex(of: viewController) else {
                return nil
            }
            if index + 1 == parent.viewControllers.count{
                return parent.viewControllers.first
            }
            return parent .viewControllers[index+1]
        }
        func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
            if completed, let visibleViewController = pageViewController.viewControllers?.first,
                let index  = parent.viewControllers.firstIndex(of: visibleViewController){
                parent.CurrentPageIndex = index
            }
        }
    }
}


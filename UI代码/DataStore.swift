//
//  DataStore.swift
//  pro 1
//
//  Created by 云图朔方 on 2020/8/10.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject{
    @Published var posts :[Post] = []
    init(){
        getPosts()
    }
    func getPosts(){
        Api().getPosts {(posts) in
            self.posts = posts
            
        }
    }
}



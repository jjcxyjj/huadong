//
//  PostList.swift
//  pro 1
//
//  Created by 云图朔方 on 2020/8/10.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI

struct PostList: View {
    @State var posts: [Post] = []
    @ObservedObject var store = DataStore()
    var body: some View {
        List(posts){post in
            VStack(alignment:.leading,spacing:8){
                Text(post.title).font(.system(.title,design: .serif)).bold()
                Text(post.body).font(.subheadline).foregroundColor(.secondary)
            }
        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}

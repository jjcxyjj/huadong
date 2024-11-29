//
//  CollectView.swift
//  pro 1
//
//  Created by a on 2020/8/3.
//  Copyright © 2020 AUV. All rights reserved.
//
//
import SwiftUI

struct CollectView: View {
    var body: some View {
        Image("素材收藏")
        .rotation3DEffect(Angle(degrees: 45), axis: (x: 30.0, y: 10.0, z: 10.0))
    }
}

struct CollectView_Previews: PreviewProvider {
    static var previews: some View {
        CollectView()
    }
}

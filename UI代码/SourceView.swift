//
//  SourceView.swift
//  pro 1
//
//  Created by 云图朔方 on 2020/8/10.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI

struct SourceView: View {
    var body: some View {
        List(0 ..< 10){ item in
            Source()
                .frame(width: 200,height: 200)
            Source()
                .frame(width: 200,height: 200)
        }
        .frame(width:410)
        .offset(x: -5)
    }
}

struct SourceView_Previews: PreviewProvider {
    static var previews: some View {
        SourceView()
    }
}

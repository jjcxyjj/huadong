//
//  UpdateDetail.swift
//  pro 1
//
//  Created by a on 2020/8/3.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
    var update : Update = updateData[0]
    
    var body: some View {
        
        List{
            VStack(spacing: 20){
                Image(update.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(update.text)
                    .frame(maxWidth: .infinity,alignment: .center)
            }
            .navigationBarTitle(update.title)
            .frame(maxWidth: .infinity,alignment: .center)
            
        }
        .listStyle(DefaultListStyle())
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}

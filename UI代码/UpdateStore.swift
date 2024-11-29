//
//  UpdataStore.swift
//  pro 1
//
//  Created by a on 2020/8/3.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore : ObservableObject{
    @Published var updates: [Update] = updateData
}

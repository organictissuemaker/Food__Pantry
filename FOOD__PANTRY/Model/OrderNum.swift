//
//  OrderNum.swift
//  FOOD__PANTRY
//
//  Created by Karen M on 12/3/24.
//

import Foundation
import SwiftUI
import SwiftData

@Model // CHANGED
class OrderNum: Identifiable {
    
    var num: Int
    var id = UUID()
    
    init(id: UUID = UUID(), num: Int) {
        self.id = id
        self.num = num
    }
}

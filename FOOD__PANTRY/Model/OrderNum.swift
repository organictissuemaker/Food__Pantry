//
//  OrderNum.swift
//  FOOD__PANTRY
//
//  Created by Karen M on 12/3/24.
//

import Foundation
import SwiftUI

// TODO: @Model
@Observable class OrderNum: Identifiable {
    
    // TODO: @Environment(\.modelContext) private var context
    var num: Int
    var id = UUID()
    
    init(id: UUID = UUID(), num: Int) {
        self.id = id
        self.num = num
    }
}

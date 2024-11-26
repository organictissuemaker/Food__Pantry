//
//  Untitled.swift
//  homeView
//
//  Created by Karen M on 11/21/24.
//
import Foundation
import SwiftUI

enum foodCategory: Codable {
    case fruit
    case veg
    case dairy
    case canned
    case other
}

// @Model
@Observable class FoodItem: Identifiable {
    enum foodCategory {
        case fruit
        case veg
        case dairy
        case canned
        case other
    }
    
    var type: foodCategory
    var id = UUID()
    var name: String
    var stock: Int
    var quantity: Int
    var image: String
    var added: Bool
    
    init(id: UUID = UUID(), name: String, stock: Int, image: String, type: foodCategory) {
        self.id = id
        self.name = name
        self.stock = stock
        self.quantity = 0
        self.image = image
        self.type = type
        self.added = false
    }
}

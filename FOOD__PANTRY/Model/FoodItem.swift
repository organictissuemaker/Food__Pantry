//
//  Untitled.swift
//  homeView
//
//  Created by Karen M on 11/21/24.
//
import Foundation
import SwiftUI
import SwiftData


enum foodCategory: Codable {
    case fruit
    case veg
    case dairy
    case canned
    case other
}

@Model
class FoodItem: Identifiable {
    
    var type: foodCategory
    var id = UUID()
    var name: String
    @Attribute  var stock: Int
    @Attribute  var quantity: Int
    var image: String
    @Attribute  var added: Bool
    
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

//
//  PantryManager.swift
//  homeView
//
//  Created by Karen M on 11/21/24.
//

import SwiftUI

@Observable class PantryManager {
    var pantryItems: [FoodItem] = [FoodItem(name: "Broccoli", stock: 3, image: "url", type: FoodItem.foodCategory.veg), ]
    var listFruits: [FoodItem]
    var listVeg: [FoodItem]
    var listDairy: [FoodItem]
    var listCans: [FoodItem]
    var listOther: [FoodItem]
    var cartItems: [FoodItem]
    
    init() {
        listDairy = []
        listCans = []
        listVeg = []
        listFruits = []
        listOther = []
        cartItems = []
        fillLists()
    }
    
    func fillLists() -> Void {
        for item in pantryItems {
            // put in corresponding list
            if (item.type == FoodItem.foodCategory.veg) {
                listVeg.append(item)
            } else if (item.type == FoodItem.foodCategory.fruit) {
                listFruits.append(item)
            } else if (item.type == FoodItem.foodCategory.canned) {
                listCans.append(item)
            } else if (item.type == FoodItem.foodCategory.dairy) {
                listDairy.append(item)
            } else if (item.type == FoodItem.foodCategory.other) {
                listOther.append(item)
            }
        }
    }
}

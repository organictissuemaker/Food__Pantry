//
//  PantryManager.swift
//  homeView
//
//  Created by Karen M on 11/21/24.
//

import SwiftUI

@Observable class PantryManager {
    var pantryItems: [FoodItem] = [FoodItem(name: "Broccoli", stock: 3, image: "https://www.shutterstock.com/image-photo/macro-photo-green-fresh-vegetable-600nw-2497091485.jpg", type: FoodItem.foodCategory.veg)]
    var listFruits: [FoodItem] = [FoodItem(name: "strawberry", stock: 3, image: "https://www.shutterstock.com/image-photo/red-berry-strawberry-isolated-on-600nw-1110029372.jpg", type: FoodItem.foodCategory.veg)]
    var listVeg: [FoodItem]
    var listDairy: [FoodItem]
    var listCans: [FoodItem]
    var listOther: [FoodItem]
    var cartItems: [FoodItem] = [FoodItem(name: "Broccoli", stock: 3, image: "https://www.shutterstock.com/image-photo/macro-photo-green-fresh-vegetable-600nw-2497091485.jpg", type: FoodItem.foodCategory.veg)]
    
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

//
//  PantryManager.swift
//  homeView
//
//  Created by Karen M on 11/21/24.
//

import SwiftUI

<<<<<<< HEAD
// @Model
class PantryManager {
    var pantryItems: [FoodItem] = [FoodItem(name: "Broccoli", stock: 3, image: "https://www.shutterstock.com/image-photo/macro-photo-green-fresh-vegetable-600nw-2497091485.jpg", type: foodCategory.veg), FoodItem(name: "Beans", stock: 6, image: "https://i5.walmartimages.com/asr/c5d894e4-c7b2-4d15-b92e-77f420f78527.323a1deb89705db57e8f9f698fd98a74.jpeg", type: foodCategory.canned), FoodItem(name: "Strawberries", stock: 2, image: "https://d2lnr5mha7bycj.cloudfront.net/product-image/file/large_92a09184-6691-48ed-ba05-590ca6ebe5f0.jpg", type: foodCategory.fruit), FoodItem(name: "Gala Apple", stock: 2, image: "https://i5.walmartimages.com/seo/Fresh-Gala-Apple-Each_f46d4fa7-6108-4450-a610-cc95a1ca28c5_3.38c2c5b2f003a0aafa618f3b4dc3cbbd.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF", type: foodCategory.fruit), FoodItem(name: "Green Apple", stock: 2, image: "https://fruityland.co/wp-content/uploads/2021/01/Granny-smith-green-apple-FL.jpg", type: foodCategory.fruit), FoodItem(name: "Mango", stock: 2, image: "https://orchardfruit.com/cdn/shop/files/Mango-Whole-The-Orchard-Fruit-72136115_2048x.jpg?v=1722937809", type: foodCategory.fruit), FoodItem(name: "Potato", stock: 2, image: "https://i5.walmartimages.com/seo/Russet-Baking-Potatoes-Whole-Fresh-Each_c638c006-a982-48f7-aa33-6d3a8dc2983c.8fd015937ebfdd46c8fcb6177d0d1b1d.jpeg", type: foodCategory.veg), FoodItem(name: "Peach", stock: 2, image: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQhO6JkUXnXmQWEw5mTgXCABywdYKJJWy5Y-n74M4mQtUnL8aXoIUexkW1tXh7RjeQVmAPxOixBCu-QE74fljzukA", type: foodCategory.fruit), FoodItem(name: "Milk", stock: 2, image: "https://tycoonpackaging.com/wp-content/uploads/2023/10/Half-Pint-Milk-Cartons-2.webp", type: foodCategory.dairy), FoodItem(name: "Oat Milk", stock: 2, image: "https://i5.walmartimages.com/seo/Oatly-Original-Oatmilk-Dairy-Free-Milk-64-fl-oz-Refrigerated-Carton_50e96dea-7450-4da4-ada6-23982ecbd3c2_1.f7402150275819bfe2beb57933f448e8.jpeg", type: foodCategory.dairy), FoodItem(name: "Eggs", stock: 2, image: "https://m.media-amazon.com/images/I/613BcgUE6cL.jpg", type: foodCategory.dairy)]
=======
@Observable class PantryManager {
    var pantryItems: [FoodItem] = [FoodItem(name: "Broccoli", stock: 3, image: "https://www.shutterstock.com/image-photo/macro-photo-green-fresh-vegetable-600nw-2497091485.jpg", type: FoodItem.foodCategory.veg), FoodItem(name: "Beans", stock: 6, image: "https://i5.walmartimages.com/asr/c5d894e4-c7b2-4d15-b92e-77f420f78527.323a1deb89705db57e8f9f698fd98a74.jpeg", type: FoodItem.foodCategory.canned), FoodItem(name: "Strawberries", stock: 2, image: "https://d2lnr5mha7bycj.cloudfront.net/product-image/file/large_92a09184-6691-48ed-ba05-590ca6ebe5f0.jpg", type: FoodItem.foodCategory.fruit), FoodItem(name: "Gala Apple", stock: 2, image: "https://i5.walmartimages.com/seo/Fresh-Gala-Apple-Each_f46d4fa7-6108-4450-a610-cc95a1ca28c5_3.38c2c5b2f003a0aafa618f3b4dc3cbbd.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF", type: FoodItem.foodCategory.fruit), FoodItem(name: "Green Apple", stock: 2, image: "https://fruityland.co/wp-content/uploads/2021/01/Granny-smith-green-apple-FL.jpg", type: FoodItem.foodCategory.fruit), FoodItem(name: "Mango", stock: 2, image: "https://orchardfruit.com/cdn/shop/files/Mango-Whole-The-Orchard-Fruit-72136115_2048x.jpg?v=1722937809", type: FoodItem.foodCategory.fruit), FoodItem(name: "Potato", stock: 2, image: "https://i5.walmartimages.com/seo/Russet-Baking-Potatoes-Whole-Fresh-Each_c638c006-a982-48f7-aa33-6d3a8dc2983c.8fd015937ebfdd46c8fcb6177d0d1b1d.jpeg", type: FoodItem.foodCategory.veg), FoodItem(name: "Peach", stock: 2, image: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQhO6JkUXnXmQWEw5mTgXCABywdYKJJWy5Y-n74M4mQtUnL8aXoIUexkW1tXh7RjeQVmAPxOixBCu-QE74fljzukA", type: FoodItem.foodCategory.fruit), FoodItem(name: "Milk", stock: 2, image: "https://tycoonpackaging.com/wp-content/uploads/2023/10/Half-Pint-Milk-Cartons-2.webp", type: FoodItem.foodCategory.dairy), FoodItem(name: "Oat Milk", stock: 2, image: "https://i5.walmartimages.com/seo/Oatly-Original-Oatmilk-Dairy-Free-Milk-64-fl-oz-Refrigerated-Carton_50e96dea-7450-4da4-ada6-23982ecbd3c2_1.f7402150275819bfe2beb57933f448e8.jpeg", type: FoodItem.foodCategory.dairy), FoodItem(name: "Eggs", stock: 2, image: "https://m.media-amazon.com/images/I/613BcgUE6cL.jpg", type: FoodItem.foodCategory.dairy)]
>>>>>>> 66ecec2e558f970e825e7ebf4315f4feb51a60d9
    
    
    
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

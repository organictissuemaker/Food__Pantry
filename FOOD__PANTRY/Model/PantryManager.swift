//
//  PantryManager.swift
//  homeView
//
//  Created by Karen M on 11/21/24.
//

import SwiftUI

// @Model
@Observable class PantryManager {
    var pantryItems: [FoodItem] = [
        FoodItem(name: "Broccoli", stock: 6, image: "https://www.shutterstock.com/image-photo/macro-photo-green-fresh-vegetable-600nw-2497091485.jpg", type: FoodItem.foodCategory.veg),
        FoodItem(name: "Potato", stock: 8, image: "https://i5.walmartimages.com/seo/Russet-Baking-Potatoes-Whole-Fresh-Each_c638c006-a982-48f7-aa33-6d3a8dc2983c.8fd015937ebfdd46c8fcb6177d0d1b1d.jpeg", type: FoodItem.foodCategory.veg),
        FoodItem(name: "Green Asparagus", stock: 5, image: "https://i5.walmartimages.com/seo/Fresh-Cut-and-Harvested-Produce-Asparagus-Bunch_f762d937-60c5-42d4-88c2-9bcab37c5bbd.85beb0fe32a4fe683efd98a88be6dd76.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.veg),
        FoodItem(name: "Cucumber", stock: 7, image: "https://i5.walmartimages.com/seo/Fresh-Cucumber-Each_5985ccc8-109e-411d-aca7-556ab217e1da.e3770028b0d00b3fa4e6a40c4e630ef9.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.veg),
        FoodItem(name: "Roma Tomato", stock: 5, image: "https://i5.walmartimages.com/seo/Fresh-Roma-Tomato-Each_ecef8a3e-ab96-445e-a16a-d639b40eb5fb.93fcc627f542f02488e5ee9d8e26f152.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.veg),
        FoodItem(name: "Spinach", stock: 3, image: "https://i5.walmartimages.com/seo/Marketside-Fresh-Spinach-10-oz-Bag-Fresh_62efef42-e5dc-4b42-8bc0-ea95ed9403ab_2.0ea9c53c1c78078f37025b698ad2acce.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.veg),
        FoodItem(name: "Iceberg Lettuce", stock: 5, image: "https://i5.walmartimages.com/seo/Fresh-Iceberg-Lettuce-Each_37a29f00-4ba9-4874-a02c-6fad5f2fcc24.2eaef037bd486278914e7d25f9890d59.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.veg),
        FoodItem(name: "Strawberries", stock: 4, image: "https://d2lnr5mha7bycj.cloudfront.net/product-image/file/large_92a09184-6691-48ed-ba05-590ca6ebe5f0.jpg", type: FoodItem.foodCategory.fruit),
        FoodItem(name: "Gala Apple", stock: 6, image: "https://i5.walmartimages.com/seo/Fresh-Gala-Apple-Each_f46d4fa7-6108-4450-a610-cc95a1ca28c5_3.38c2c5b2f003a0aafa618f3b4dc3cbbd.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF", type: FoodItem.foodCategory.fruit),
        FoodItem(name: "Green Apple", stock: 5, image: "https://fruityland.co/wp-content/uploads/2021/01/Granny-smith-green-apple-FL.jpg", type: FoodItem.foodCategory.fruit),
        FoodItem(name: "Mango", stock: 7, image: "https://orchardfruit.com/cdn/shop/files/Mango-Whole-The-Orchard-Fruit-72136115_2048x.jpg?v=1722937809", type: FoodItem.foodCategory.fruit),
        FoodItem(name: "Peach", stock: 6, image: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQhO6JkUXnXmQWEw5mTgXCABywdYKJJWy5Y-n74M4mQtUnL8aXoIUexkW1tXh7RjeQVmAPxOixBCu-QE74fljzukA", type: FoodItem.foodCategory.fruit),
        FoodItem(name: "Milk", stock: 3, image: "https://tycoonpackaging.com/wp-content/uploads/2023/10/Half-Pint-Milk-Cartons-2.webp", type: FoodItem.foodCategory.dairy),
        FoodItem(name: "Oat Milk", stock: 2, image: "https://i5.walmartimages.com/seo/Oatly-Original-Oatmilk-Dairy-Free-Milk-64-fl-oz-Refrigerated-Carton_50e96dea-7450-4da4-ada6-23982ecbd3c2_1.f7402150275819bfe2beb57933f448e8.jpeg", type: FoodItem.foodCategory.dairy),
        FoodItem(name: "Sour Cream", stock: 3, image: "https://i5.walmartimages.com/seo/Knudsen-Hampshire-100-Natural-Sour-Cream-16-oz-Tub-Refrigerated_2ac745c9-4d63-4fa6-9515-fe611963f1d8.4e1e60293c4b76d9406878c7930db542.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.dairy),
        FoodItem(name: "Chocolate Milk", stock: 3, image: "https://i5.walmartimages.com/seo/Great-Value-Milk-1-Lowfat-Chocolate-Half-Gallon-Plastic-Jug_60a8e4d7-ea91-4de6-a815-6f302a80be10.0334a38e315e83d004c0d937063d22d1.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.dairy),
        FoodItem(name: "Eggs", stock: 10, image: "https://m.media-amazon.com/images/I/613BcgUE6cL.jpg", type: FoodItem.foodCategory.dairy),
        FoodItem(name: "French Bakery Bread Loaf", stock: 3, image: "https://i5.walmartimages.com/seo/Freshness-Guaranteed-French-Bread-14-oz_46f30777-7fea-4065-b578-5c5220651ace.5207eca2f4531eb62458b155dc7cf25d.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.other),
        FoodItem(name: "Everything French Bakery Bread Loaf", stock: 4, image: "https://i5.walmartimages.com/seo/Marketside-Everything-French-Bread-16-oz_415d1faa-77cf-41d1-a699-9a24bbc4804e.3fcb320f3e3e70a75d3d2a40a43f67bc.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.other),
        FoodItem(name: "Chocolate Cake", stock: 3, image: "https://i5.walmartimages.com/seo/Freshness-Guaranteed-5-Chocolate-Cake-15-9-oz-1-Count-Regular-Cake-Tray-Refrigerated_f397fb39-4950-4791-9458-81450df43b47.d068a2447df21873c016ffd28ca01282.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.other),
        FoodItem(name: "Cookies and Creme Cake", stock: 2, image: "https://i5.walmartimages.com/seo/Freshness-Guaranteed-7-inch-Cookies-N-Creme-Cake-36oz-Regular-Tray-Refrigerate_93011d83-24d3-4ec4-aaa4-294ec23f13f5.0fc1c53d92e97c7f6abf3bf4af58794a.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.other),
        FoodItem(name: "Beans", stock: 6, image: "https://i5.walmartimages.com/asr/c5d894e4-c7b2-4d15-b92e-77f420f78527.323a1deb89705db57e8f9f698fd98a74.jpeg", type: FoodItem.foodCategory.canned),
        FoodItem(name: "Corn", stock: 5, image: "https://i5.walmartimages.com/seo/Great-Value-Golden-Sweet-Whole-Kernel-Corn-Canned-Corn-15-oz-Can_f10b66a7-2551-4b79-9371-63a7a04251eb.3b7842999d659f6aedbcb4bddfa78233.png?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.canned),
        FoodItem(name: "Sweet Peas", stock: 3, image: "https://i5.walmartimages.com/seo/Great-Value-Sweet-Peas-15-oz-Can_c252667a-13d3-4372-bb17-fa5d406a354b.2fb3e5f543a00a4b038eb6141710a481.png?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.canned),
        FoodItem(name: "Tuna", stock: 3, image: "https://i5.walmartimages.com/seo/Great-Value-Chunk-Light-Tuna-in-Water-5-oz-4-count_07703938-dd6c-4935-8656-aa606e61d2a1.a28f64cde186d9ec91b9146bec0c5c32.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.canned)]

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
        pantryItems = [
            FoodItem(name: "Broccoli", stock: 6, image: "https://www.shutterstock.com/image-photo/macro-photo-green-fresh-vegetable-600nw-2497091485.jpg", type: FoodItem.foodCategory.veg),
                       
            FoodItem(name: "Potato", stock: 8, image: "https://i5.walmartimages.com/seo/Russet-Baking-Potatoes-Whole-Fresh-Each_c638c006-a982-48f7-aa33-6d3a8dc2983c.8fd015937ebfdd46c8fcb6177d0d1b1d.jpeg", type: FoodItem.foodCategory.veg),
                       
            FoodItem(name: "Green Asparagus", stock: 5, image: "https://i5.walmartimages.com/seo/Fresh-Cut-and-Harvested-Produce-Asparagus-Bunch_f762d937-60c5-42d4-88c2-9bcab37c5bbd.85beb0fe32a4fe683efd98a88be6dd76.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.veg),
                       
            FoodItem(name: "Cucumber", stock: 7, image: "https://i5.walmartimages.com/seo/Fresh-Cucumber-Each_5985ccc8-109e-411d-aca7-556ab217e1da.e3770028b0d00b3fa4e6a40c4e630ef9.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.veg),
                       
            FoodItem(name: "Roma Tomato", stock: 5, image: "https://i5.walmartimages.com/seo/Fresh-Roma-Tomato-Each_ecef8a3e-ab96-445e-a16a-d639b40eb5fb.93fcc627f542f02488e5ee9d8e26f152.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.veg),
                       
            FoodItem(name: "Spinach", stock: 3, image: "https://i5.walmartimages.com/seo/Marketside-Fresh-Spinach-10-oz-Bag-Fresh_62efef42-e5dc-4b42-8bc0-ea95ed9403ab_2.0ea9c53c1c78078f37025b698ad2acce.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.veg),
                       
            FoodItem(name: "Iceberg Lettuce", stock: 5, image: "https://i5.walmartimages.com/seo/Fresh-Iceberg-Lettuce-Each_37a29f00-4ba9-4874-a02c-6fad5f2fcc24.2eaef037bd486278914e7d25f9890d59.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.veg),
                       
            FoodItem(name: "Strawberries", stock: 4, image: "https://d2lnr5mha7bycj.cloudfront.net/product-image/file/large_92a09184-6691-48ed-ba05-590ca6ebe5f0.jpg", type: FoodItem.foodCategory.fruit),
                       
            FoodItem(name: "Gala Apple", stock: 6, image: "https://i5.walmartimages.com/seo/Fresh-Gala-Apple-Each_f46d4fa7-6108-4450-a610-cc95a1ca28c5_3.38c2c5b2f003a0aafa618f3b4dc3cbbd.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF", type: FoodItem.foodCategory.fruit),
                       
            FoodItem(name: "Green Apple", stock: 5, image: "https://fruityland.co/wp-content/uploads/2021/01/Granny-smith-green-apple-FL.jpg", type: FoodItem.foodCategory.fruit),
                       
            FoodItem(name: "Mango", stock: 7, image: "https://orchardfruit.com/cdn/shop/files/Mango-Whole-The-Orchard-Fruit-72136115_2048x.jpg?v=1722937809", type: FoodItem.foodCategory.fruit),
                       
            FoodItem(name: "Peach", stock: 6, image: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQhO6JkUXnXmQWEw5mTgXCABywdYKJJWy5Y-n74M4mQtUnL8aXoIUexkW1tXh7RjeQVmAPxOixBCu-QE74fljzukA", type: FoodItem.foodCategory.fruit),
                       
            FoodItem(name: "Milk", stock: 3, image: "https://tycoonpackaging.com/wp-content/uploads/2023/10/Half-Pint-Milk-Cartons-2.webp", type: FoodItem.foodCategory.dairy),
                       
            FoodItem(name: "Oat Milk", stock: 2, image: "https://i5.walmartimages.com/seo/Oatly-Original-Oatmilk-Dairy-Free-Milk-64-fl-oz-Refrigerated-Carton_50e96dea-7450-4da4-ada6-23982ecbd3c2_1.f7402150275819bfe2beb57933f448e8.jpeg", type: FoodItem.foodCategory.dairy),
                       
            FoodItem(name: "Sour Cream", stock: 3, image: "https://i5.walmartimages.com/seo/Knudsen-Hampshire-100-Natural-Sour-Cream-16-oz-Tub-Refrigerated_2ac745c9-4d63-4fa6-9515-fe611963f1d8.4e1e60293c4b76d9406878c7930db542.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.dairy),
                       
            FoodItem(name: "Chocolate Milk", stock: 3, image: "https://i5.walmartimages.com/seo/Great-Value-Milk-1-Lowfat-Chocolate-Half-Gallon-Plastic-Jug_60a8e4d7-ea91-4de6-a815-6f302a80be10.0334a38e315e83d004c0d937063d22d1.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.dairy),
                       
            FoodItem(name: "Eggs", stock: 10, image: "https://m.media-amazon.com/images/I/613BcgUE6cL.jpg", type: FoodItem.foodCategory.dairy),
                       
            FoodItem(name: "French Bakery Bread Loaf", stock: 3, image: "https://i5.walmartimages.com/seo/Freshness-Guaranteed-French-Bread-14-oz_46f30777-7fea-4065-b578-5c5220651ace.5207eca2f4531eb62458b155dc7cf25d.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.other),
                       
            FoodItem(name: "Everything French Bakery Bread Loaf", stock: 4, image: "https://i5.walmartimages.com/seo/Marketside-Everything-French-Bread-16-oz_415d1faa-77cf-41d1-a699-9a24bbc4804e.3fcb320f3e3e70a75d3d2a40a43f67bc.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.other),
                       
            FoodItem(name: "Chocolate Cake", stock: 3, image: "https://i5.walmartimages.com/seo/Freshness-Guaranteed-5-Chocolate-Cake-15-9-oz-1-Count-Regular-Cake-Tray-Refrigerated_f397fb39-4950-4791-9458-81450df43b47.d068a2447df21873c016ffd28ca01282.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.other),
                       
            FoodItem(name: "Cookies and Creme Cake", stock: 2, image: "https://i5.walmartimages.com/seo/Freshness-Guaranteed-7-inch-Cookies-N-Creme-Cake-36oz-Regular-Tray-Refrigerate_93011d83-24d3-4ec4-aaa4-294ec23f13f5.0fc1c53d92e97c7f6abf3bf4af58794a.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.other),
                       
            FoodItem(name: "Beans", stock: 6, image: "https://i5.walmartimages.com/asr/c5d894e4-c7b2-4d15-b92e-77f420f78527.323a1deb89705db57e8f9f698fd98a74.jpeg", type: FoodItem.foodCategory.canned),
                       
            FoodItem(name: "Corn", stock: 5, image: "https://i5.walmartimages.com/seo/Great-Value-Golden-Sweet-Whole-Kernel-Corn-Canned-Corn-15-oz-Can_f10b66a7-2551-4b79-9371-63a7a04251eb.3b7842999d659f6aedbcb4bddfa78233.png?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.canned),
                       
            FoodItem(name: "Sweet Peas", stock: 3, image: "https://i5.walmartimages.com/seo/Great-Value-Sweet-Peas-15-oz-Can_c252667a-13d3-4372-bb17-fa5d406a354b.2fb3e5f543a00a4b038eb6141710a481.png?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.canned),
                       
            FoodItem(name: "Tuna", stock: 3, image: "https://i5.walmartimages.com/seo/Great-Value-Chunk-Light-Tuna-in-Water-5-oz-4-count_07703938-dd6c-4935-8656-aa606e61d2a1.a28f64cde186d9ec91b9146bec0c5c32.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF", type: FoodItem.foodCategory.canned)
        ]
        fillLists()
    }
    
    func fillLists() -> Void {
        listDairy = []
        listCans = []
        listVeg = []
        listFruits = []
        listOther = []
        cartItems = []
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

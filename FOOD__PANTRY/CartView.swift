//
//  CartView.swift
//  Food_Pantry
//
//  Created by Joyce Qiao on 11/21/24.
//

import SwiftUI

struct CartItemListView: View{
    var itemManager: PantryManager
    
    var body: some View{
        VStack{
            headerView
            List(itemManager.cartItems){
                item in
                    CartItemView(cartItems: FoodItem)
            }
        }
    }
    .background(Color.blue.opacity(0.7))
    
    private var headerView: some View{
        HStack{
            Text("Cart")
                .font(.title)
                .bold()
            Spacer()
        }
        .padding()
    }
}

struct CartItemView: some View{
    var cartItem: Item
    
    var body: some View{
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.gray)
            .overlay(
                VStack{
                    HStack{
                        imageSection
                        Spacer()
                        nameSection
                    }
                    .padding()
                    quantitySection
                }
                    .padding()
            )
            .frame(height: 200)
    }
    
    private var imageSection: some View{
        Circle()
            .fill(Color.gray)
            .overlay(
                content: cartItem.image
            )
            .frame(height: 100)
    }
    
    private var nameSection: some View{
        Text(cartItem.name)
            .bold()
            .font(.title2)
    }
    
    private var quantitySection: some View{
        Rectangle()
            .fill(Color.white)
            .stroke(.black, lineWidth: 2)
            .overlay(
                HStack{
                    Text("Quantity: ")
                        .bold()
                        .font(.body)
                    Text(cartItem.quantity)
                        .bold()
                    Spacer()
                    Button(action:{
                        cartItem.quantity += 1
                    }){
                        Image(systemName:
                                "plus.square.fill"
                            .font(.system(size: 25))
                        )
                    }
                    Button(action:{
                        cartItem.quantity -= 1
                    }){
                        Image(systemName:
                                "minus.square.fill"
                            .font(.system(size: 25))
                        )
                    }
                }
            )
    }
}


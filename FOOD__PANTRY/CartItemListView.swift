//
//  CartView.swift
//  Food_Pantry
//
//  Created by Joyce Qiao on 11/21/24.
//

import SwiftUI

struct CartItemListView: View{
    @State private var pantryManager = PantryManager()
    
    var body: some View{
        VStack{
            headerView
            List(pantryManager.cartItems, id: \.id){
                item in
                CartItemView(cartItem: item)
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

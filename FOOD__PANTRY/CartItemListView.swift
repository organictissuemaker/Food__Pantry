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
        .background(Color.blue.opacity(0.7))
    }
<<<<<<< HEAD
        
=======
     .background(Color.blue.opacity(0.7))
>>>>>>> 4c8d58fb1780340a99563b5bd9e9309071c47f6d
    
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

#Preview {
    CartItemListView()
}

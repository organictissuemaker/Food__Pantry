//
//  CartView.swift
//  Food_Pantry
//
//  Created by Joyce Qiao on 11/21/24.
//

import SwiftUI

struct CartItemListView: View{
    @State var pantryManager : PantryManager
    
    var body: some View{
        VStack {
            ScrollView(.vertical){
                VStack{
                    headerView
                    ForEach (pantryManager.cartItems, id: \.id){
                        item in
                        CartItemView(cartItem: item)
                    }
                }
                // .background(Color.blue.opacity(0.7))
            }
            Spacer()
        }
        .background(Color.blue.opacity(0.7))
    }
    
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
    CartItemListView(pantryManager: PantryManager())
}

//
//  CartItemView.swift
//  FOOD__PANTRY
//
//  Created by Joyce Qiao on 11/23/24.
//
import SwiftUI

struct CartItemView: View{
    //@Environment(\.modelContext) private var context
    @Binding var pantryManager = PantryManager()
    var cartItem: FoodItem
    
    var body: some View{
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.gray.opacity(0.5))
            .overlay(
                VStack{
                    HStack{
                        imageSection
                        Spacer()
                        nameSection
                        Spacer()
                    }
                    .padding()
                    quantitySection
                }
                    .padding()
            )
            .frame(height: 200)
            .padding()
    }
    
    private var imageSection: some View{
        Circle()
            .fill(Color.gray.opacity(0.7))
            .overlay(
                AsyncImage(url: URL(string: cartItem.image)){
                    image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Color.gray
                }
                    .frame(width: 70, height: 70)
            )
            .frame(height: 100)
    }
    
    private var nameSection: some View{
        Text(cartItem.name)
            .bold()
            .font(.title)
            .foregroundStyle(Color.blue.opacity(0.7))
    }
    
    private var quantitySection: some View{
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.gray.opacity(0.7))
            .stroke(.black, lineWidth: 2)
            .overlay(
                HStack{
                    Spacer()
                    Text("Quantity: ")
                        .bold()
                        .font(.body)
                    Text(String(cartItem.quantity))
                        .bold()
                    Spacer()
                    Button(action:{
                        if (cartItem.quantity != 0){
                            cartItem.quantity -= 1
                            cartItem.stock += 1
                        }
                        if (cartItem.quantity == 0){
                            pantryManager.cartItems.removeAll(where: { $0.name == cartItem.name })
                        }
                    }){
                        Image(systemName:
                                "minus.square.fill"
                        ).font(.system(size: 25))
                            .opacity(0.7)
                    }
                    Button(action:{
                        if (cartItem.stock != 0){
                            cartItem.quantity += 1
                            cartItem.stock -= 1
                        }
                    }){
                        Image(systemName:
                                "plus.square.fill"
                        ).font(.system(size: 25))
                            .opacity(0.7)
                    }
                }
            )
    }
}

#Preview {
    CartItemView(pantryManager: ContentView().$pantryManager, cartItem: PantryManager().cartItems[0])
}

//
//  draftHomeView.swift
//  homeView
//
//  Created by Karen M on 11/21/24.
//

//hihihihi/
import SwiftUI

struct draftHomeView: View {
    
    var pantryManager: PantryManager
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            HStack(spacing: 30) {
                Spacer()
                VStack(spacing: 3) {
                    Text("Cal Food")
                        .font(.system(size: 35))
                        .foregroundColor(.black)
                        .bold()
                        // .italic()
                    Text("Pantry")
                        .font(.system(size: 35))
                        .foregroundColor(.black)
                        .bold()
                        .italic()
                }
                Spacer()
                AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL-ddiqd6BE9ryy8NbtvGVsVVjLNZXx-Nnqw&s"), scale: 2.3)
                Spacer()
            }
            // VStack all 4 views (horizontal scroll)
            // fruitVegView(pantryManager.listFruitVeg)
            // dairyView(pantryManager.listDairy)
            // cansView(pantryManager.listCans)
            // frozenView(pantryManager.listFrozen)
            Spacer()
            Text("  fruitView")
            Spacer()
            Text("  vegView")
            Spacer()
            Text("  cansView")
            Spacer()
            Text("  dairyView")
            Spacer()
            HStack(spacing: 30) {
                Spacer()
                Text(".homeButton")
                Spacer()
                Text(".cartButton")
                Spacer()
                Text(".pickupButton")
                Spacer()
                // 3 buttons, define buttons (view) in manager
                // pantryManager.homeButton
                // pantryManager.cartButton
                // pantryManager.pickupButton
                
            }
            
        }
        .background(Color.blue.opacity(0.7))
        
    }
    
    private var fruitView: some View {
        HStack() {
            // use similar view from cartView
        }
    }
    
    


//    var myTypes: [Any] = [View1.self, View2.self]
//        var body: some View {
//            List {
//                ForEach(0..<myTypes.count) { index in
//                    self.buildView(types: self.myTypes, index: index)
//                }
//            }
//        }
    
//    var body: some View {
//        NavigationStack {
//            VStack(spacing: 30) {
//                TitleTextFieldView(title: "Owner Name", contentText: $ownerName)
//                VStack(alignment: .leading, spacing: 10) {
//                    TitleTextFieldView(title: "Card Number", contentText: $cardNumber)
//                    generateCreditCardNumberButton
//
//                }
//                Spacer()
//                addCreditCardButton
//            }
//            .navigationTitle("Add New Card")
//            .navigationBarTitleDisplayMode(.inline)
//            .padding()
//            .toolbar {
//                ToolbarItem(placement: .topBarLeading) {
//                    Button(action: {
//                        dismiss()
//                    }) {
//                        Image(systemName: "xmark.circle.fill")
//                            .foregroundStyle(.gray)
//                            .font(.system(size: 25))
//                    }
//                }
//            }
//        }
//    }
//
//    private var addCreditCardButton: some View {
//        // TODO: 3A. Implement addCreditCardButton
//
//        Button(action: {
//            addCreditCard()
//            dismiss()
//            }) {
//            ZStack {
//                RoundedRectangle(cornerRadius: 8)
//                    .fill(Color.blue)
//                    .frame(height: 50, alignment: .leading)
//                Text("Add Credit Card!")
//                    .foregroundColor(.white)
//            }
//            // dismiss()
//        }
//    }
//
//    private var generateCreditCardNumberButton: some View {
//        // TODO: 3B. Implement generateCreditCardNumberButton
//        Button(action: generateCreditCardNumber) {
//            ZStack {
//                RoundedRectangle(cornerRadius: 8)
//                    .fill(Color.green)
//                    .frame(height: 50, alignment: .leading)
//                HStack {
//                    Image(systemName: "creditcard.and.123") // insert image
//                        .foregroundColor(Color.white)
//                    Text("Generate Credit Card Number")
//                        .foregroundColor(.white)
//                }
//            }
//        }
//        // generateCreditCardNumber()
//    }
//
//    private func generateCreditCardNumber() {
//        cardNumber = cardManager.createCreditCardNumber()
//    }
//
//    private func addCreditCard() {
//        let cardy: CFCard = CFCard(cardNumber: cardNumber, ownerName: ownerName, balance: 0, transactions: [])
//        cardManager.addCard(for: cardy)
//    }
}

/// A helper view that customizes a `TextField` by adding an associated title at the top as well as some UI customization.
//struct TitleTextFieldView: View {
//    var title: String
//    @Binding var contentText: String
//    var body: some View {
//        VStack(alignment: .leading) {
//            Text(title)
//                .font(.title2)
//                .bold()
//            RoundedRectangle(cornerRadius: 10)
//                .fill(.blue.opacity(0.1))
//                .stroke(.blue, lineWidth: 1)
//                .frame(height: 50)
//                .overlay(
//                    TextField("Enter \(title)", text: $contentText)
//                        .padding(10)
//                        .bold()
//                )
//        }
//    }
//}

#Preview {
    draftHomeView(pantryManager: PantryManager())
}

////
////  draftHomeView.swift
////  homeView
////
////  Created by Karen M on 11/21/24.
////
//
////hihihihi/
//import SwiftUI
//
//struct HomeView: View {
//    
//    var pantryManager: PantryManager
//    
//    var body: some View {
//        VStack(alignment: .leading, spacing: 30) {
//            HStack(spacing: 30) {
//                Spacer()
//                VStack(spacing: 3) {
//                    Text("Cal Food")
//                        .font(.system(size: 35))
//                        .foregroundColor(.black)
//                        .bold()
//                    // .italic()
//                    Text("Pantry")
//                        .font(.system(size: 35))
//                        .foregroundColor(.black)
//                        .bold()
//                        .italic()
//                }
//                Spacer()
//                AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL-ddiqd6BE9ryy8NbtvGVsVVjLNZXx-Nnqw&s"), scale: 2.3)
//                Spacer()
//            }
//            // VStack all 4 views (horizontal scroll)
//            // fruitVegView(pantryManager.listFruitVeg)
//            // dairyView(pantryManager.listDairy)
//            // cansView(pantryManager.listCans)
//            // frozenView(pantryManager.listFrozen)
//            Spacer()
//            Text("  fruitView")
//            Spacer()
//            Text("  vegView")
//            Spacer()
//            Text("  cansView")
//            Spacer()
//            Text("  dairyView")
//            Spacer()
////            HStack(spacing: 30) {
////                Spacer()
////                Text(".homeButton")
////                Spacer()
////                Text(".cartButton")
////                Spacer()
////                Text(".pickupButton")
////                Spacer()
////                // 3 buttons, define buttons (view) in manager
////                // pantryManager.homeButton
////                // pantryManager.cartButton
////                // pantryManager.pickupButton
////            }
//            NavigationLink(destination: PickUpView()) {
//                Button(action: {} ) {
//                    Image(systemName: "chevron.right.circle.fill")
//                        .font(.system(size: 30))
//                    // Button design
//                }
//            }
//            Spacer()
//        }
//        .background(Color.blue.opacity(0.7))
//        
//    }
//    
//    private var fruitView: some View {
//        HStack() {
//            // use similar view from cartView
//        }
//    }
//}
//
//#Preview {
//    HomeView(pantryManager: PantryManager())
//}

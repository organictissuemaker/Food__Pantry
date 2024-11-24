//
//  ContentView.swift
//  FOOD__PANTRY
//
//  Created by Zena Wu on 11/21/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    @State var pantryManager: PantryManager = PantryManager()
    
    var body: some View {
        NavigationStack {
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
                //            HStack(spacing: 30) {
                //                Spacer()
                //                Text(".homeButton")
                //                Spacer()
                //                Text(".cartButton")
                //                Spacer()
                //                Text(".pickupButton")
                //                Spacer()
                //                // 3 buttons, define buttons (view) in manager
                //                // pantryManager.homeButton
                //                // pantryManager.cartButton
                //                // pantryManager.pickupButton
                //            }
                
                NavigationLink(destination: PickUpView(), label: {
                    Text("Pickup View")
                })
//                }) {
//                    Button(action: {} ) {
//                        Image(systemName: "chevron.right.circle.fill")
//                            .font(.system(size: 40))
//                        // Button design
//                    }
                }
                Spacer()
            }
            .background(Color.blue.opacity(0.7))
        }
        
    }
//    @Environment(\.modelContext) private var modelContext
//    @Query private var items: [Item]
//
//    var body: some View {
//        NavigationSplitView {
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
//                    } label: {
//                        Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//#if os(macOS)
//            .navigationSplitViewColumnWidth(min: 180, ideal: 200)
//#endif
//            .toolbar {
//#if os(iOS)
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//#endif
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//        } detail: {
//            Text("Select an item")
//        }
//    }
//
//    private func addItem() {
//        withAnimation {
//            let newItem = Item(timestamp: Date())
//            modelContext.insert(newItem)
//        }
//    }
//
//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            for index in offsets {
//                modelContext.delete(items[index])
//            }
//        }
//    }


#Preview {
    ContentView(pantryManager: PantryManager())
        .modelContainer(for: Item.self, inMemory: true)
}

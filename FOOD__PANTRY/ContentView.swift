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
                Spacer()
                HStack(spacing: 30) {
                    Spacer()
                    VStack(spacing: 3) {
                        Text("Cal Food")
                            .font(.system(size: 35))
                            .foregroundColor(.black)
                            .bold()
                            .italic()
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
                List {
                    fruitView
                    vegView
                    dairyView
                    canView
                    otherView
                }
                VStack {
                    HStack(spacing: 60) {
                        HStack {
                            Image(systemName: "house.fill").foregroundColor(Color(red: 0.1, green: 0.2, blue: 1.0))
                            Text("Home").foregroundColor(Color(red: 0.1, green: 0.2, blue: 1.0))
                        }
                        NavigationLink(destination: CartItemListView(), label: {
                            Label("Cart", systemImage: "cart.fill")})
                        NavigationLink(destination: PickUpView(), label: {
                            Label("Pickup", systemImage: "calendar.badge.clock")
                        })
                    }
                    
                }
                .padding(30)
                .background(.yellow)
                
            }
            .background(Color.blue.opacity(0.8))
        }
        .accentColor(Color(red: 0.1, green: 0.2, blue: 1.0))
    }
    
    private var fruitView: some View {
        VStack {
            Text("Fruits")
            ScrollView(.horizontal) {
                ForEach(pantryManager.listFruits) { fruit in
                    VStack(spacing: 20) {
                        Text(String(fruit.name))
                        AsyncImage(url: URL(string: fruit.image), scale: 5)
                        Text("Stock: " + String(fruit.stock))
                    }
                    .padding()
                    .border(.gray, width: 1)
                    .background(Color.white)
                    .padding()
                }
                .padding(.top, 5)
            }
        }
    }
    
    private var vegView: some View {
        VStack {
            Text("Vegetables")
            ScrollView(.horizontal) {
                ForEach(pantryManager.listVeg) { veg in
                    VStack(spacing: 20) {
                        Text(String(veg.name))
                        AsyncImage(url: URL(string: veg.image), scale: 5)
                        Text("Stock: " + String(veg.stock))
//                        Button(systemImage: "calendar.badge.clock", action: {
//                            veg.quantity = 1
//                            pantryManager.cartItems.append(veg)
//                        })
                        // .contentShape(RoundedRectangle())
                    }
                    .padding(8)
                    .border(.gray, width: 1)
                    .background(Color.white)
                    .padding(8)
                }
                .padding(.top, 5)
            }
        }
    }
    
    private var canView: some View {
        VStack {
            Text("Cans")
            ScrollView(.horizontal) {
                ForEach(pantryManager.listCans) { can in
                    VStack(spacing: 20) {
                        Text(String(can.name))
                        AsyncImage(url: URL(string: can.image), scale: 5)
                        Text("Stock: " + String(can.stock))
                    }
                    .padding()
                    .border(.gray, width: 1)
                    .padding()
                }
                .padding(.top, 5)
            }
        }
    }
    
    private var dairyView: some View {
        VStack {
            Text("Dairy")
            ScrollView(.horizontal) {
                ForEach(pantryManager.listDairy) { dairy in
                    VStack(spacing: 20) {
                        Text(String(dairy.name))
                        AsyncImage(url: URL(string: dairy.image), scale: 5)
                        Text("Stock: " + String(dairy.stock))
                    }
                    .padding()
                    .border(.gray, width: 1)
                    .padding()
                }
                .padding(.top, 5)
            }
        }
    }
    
    private var otherView: some View {
        VStack {
            Text("Other")
            ScrollView(.horizontal) {
                ForEach(pantryManager.listOther) { other in
                    VStack(spacing: 20) {
                        Text(String(other.name))
                        AsyncImage(url: URL(string: other.image), scale: 5)
                        Text("Stock: " + String(other.stock))
                    }
                    .padding()
                    .border(.gray, width: 1)
                    .padding()
                }
                .padding(.top, 5)
            }
        }
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

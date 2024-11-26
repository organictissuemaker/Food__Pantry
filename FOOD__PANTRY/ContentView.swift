//
//  ContentView.swift
//  FOOD__PANTRY
//
//  Created by Zena Wu on 11/21/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    // @Environment(\.modelContext) private var context
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
                    HStack{
                        HStack {
                            Image(systemName: "house.fill").foregroundColor(Color(red: 0.1, green: 0.2, blue: 1.0))
                            Text("Home").foregroundColor(Color(red: 0.1, green: 0.2, blue: 1.0))
                        }
                        Spacer()
                        NavigationLink(destination: CartItemListView(pantryManager: pantryManager), label: {
                            Label("Cart", systemImage: "cart.fill")})
                        Spacer()
                        NavigationLink(destination: PickUpView(), label: {
                            Label("Pickup", systemImage: "calendar.badge.clock")
                        })
                    }
                    
                }
                .padding(30)
                .background(Color.yellow)
                
            }
            .background(Color.blue.opacity(0.8))
        }
        .accentColor(Color(red: 0.1, green: 0.2, blue: 1.0))
    }
    
    private var fruitView: some View {
        VStack(alignment: .leading) {
            Text("Fruits")
            ScrollView(.horizontal) {
                HStack {
                    ForEach(pantryManager.listFruits) { fruit in
                        VStack(spacing: 8) {
                            Text(String(fruit.name))
                            AsyncImage(url: URL(string: fruit.image)){ result in
                                result.image?
                                    .resizable()
                                    .scaledToFill()
                            }
                            .frame(width: 110, height: 110)
                            HStack(spacing: 10) {
                                Text("Stock: " + String(fruit.stock))
                                Spacer()
                                    .frame(width: 4)
                                Button(action: {
                                    if fruit.added == false {
                                        fruit.quantity = 1
                                        fruit.stock -= 1
                                        pantryManager.cartItems.append(fruit)
                                    } else {
                                        fruit.quantity = 0
                                        fruit.stock += 1
                                        pantryManager.cartItems.removeAll(where: { $0.name == fruit.name })
                                    }
                                    fruit.added = !(fruit.added)
                                }) {
                                    Image(systemName: "plus.circle")
                                }
                                .foregroundColor(fruit.added ? .gray : .blue)
                                .background(fruit.added ? Color.gray.opacity(0.3) : .clear)
                            }
                        }
                        .padding(6)
                        .border(.gray, width: 1)
                        .background(Color.white)
                        .padding(8)
                    }
                    .padding(.top, 5)
                }
            }
        }
    }
    
    private var vegView: some View {
        VStack(alignment: .leading) {
            Text("Vegetables")
            ScrollView(.horizontal) {
                HStack {
                    ForEach(pantryManager.listVeg) { veg in
                        VStack(spacing: 8) {
                            Text(String(veg.name))
                            AsyncImage(url: URL(string: veg.image)){ result in
                                result.image?
                                    .resizable()
                                    .scaledToFill()
                            }
                            .frame(width: 110, height: 110)
                            HStack(spacing: 10) {
                                Text("Stock: " + String(veg.stock))
                                Spacer()
                                    .frame(width: 4)
                                Button(action: {
                                    if veg.added == false {
                                        veg.quantity = 1
                                        veg.stock -= 1
                                        pantryManager.cartItems.append(veg)
                                    } else {
                                        veg.quantity = 0
                                        veg.stock += 1
                                        pantryManager.cartItems.removeAll(where: { $0.name == veg.name })
                                    }
                                    veg.added = !(veg.added)
                                }) {
                                    Image(systemName: "plus.circle")
                                }
                                .foregroundColor(veg.added ? .gray : .blue)
                                .background(veg.added ? Color.gray.opacity(0.3) : .clear)
                            }
                        }
                        .padding(6)
                        .border(.gray, width: 1)
                        .background(Color.white)
                        .padding(8)
                    }
                    .padding(.top, 5)
                }
            }
        }
    }
    
    private var canView: some View {
        VStack(alignment: .leading) {
            Text("Canned/Bagged Foods")
            ScrollView(.horizontal) {
                HStack {
                    ForEach(pantryManager.listCans) { can in
                        VStack(spacing: 8) {
                            Text(String(can.name))
                            AsyncImage(url: URL(string: can.image)){ result in
                                result.image?
                                    .resizable()
                                    .scaledToFill()
                            }
                            .frame(width: 110, height: 110)
                            HStack(spacing: 10) {
                                Text("Stock: " + String(can.stock))
                                Spacer()
                                    .frame(width: 4)
                                Button(action: {
                                    if can.added == false {
                                        can.quantity = 1
                                        can.stock -= 1
                                        pantryManager.cartItems.append(can)
                                    } else {
                                        can.quantity = 0
                                        can.stock += 1
                                        pantryManager.cartItems.removeAll(where: { $0.name == can.name })
                                    }
                                    can.added = !(can.added)
                                }) {
                                    Image(systemName: "plus.circle")
                                }
                                .foregroundColor(can.added ? .gray : .blue)
                                .background(can.added ? Color.gray.opacity(0.3) : .clear)
                            }
                        }
                        .padding(6)
                        .border(.gray, width: 1)
                        .background(Color.white)
                        .padding(8)
                    }
                    .padding(.top, 5)
                }
            }
        }
    }
    
    private var dairyView: some View {
        VStack(alignment: .leading) {
            Text("Dairy")
            ScrollView(.horizontal) {
                HStack {
                    ForEach(pantryManager.listDairy) { dairy in
                        VStack(spacing: 8) {
                            Text(String(dairy.name))
                            AsyncImage(url: URL(string: dairy.image)){ result in
                                result.image?
                                    .resizable()
                                    .scaledToFill()
                            }
                            .frame(width: 110, height: 110)
                            HStack(spacing: 10) {
                                Text("Stock: " + String(dairy.stock))
                                Spacer()
                                    .frame(width: 4)
                                Button(action: {
                                    if dairy.added == false {
                                        dairy.quantity = 1
                                        dairy.stock -= 1
                                        pantryManager.cartItems.append(dairy)
                                    } else {
                                        dairy.quantity = 0
                                        dairy.stock += 1
                                        pantryManager.cartItems.removeAll(where: { $0.name == dairy.name })
                                    }
                                    dairy.added = !(dairy.added)
                                }) {
                                    Image(systemName: "plus.circle")
                                }
                                .foregroundColor(dairy.added ? .gray : .blue)
                                .background(dairy.added ? Color.gray.opacity(0.3) : .clear)
                            }
                        }
                        .padding(6)
                        .border(.gray, width: 1)
                        .background(Color.white)
                        .padding(8)
                    }
                    .padding(.top, 5)
                }
            }
        }
    }
    
    private var otherView: some View {
        VStack(alignment: .leading) {
            Text("Other")
            ScrollView(.horizontal) {
                HStack {
                    ForEach(pantryManager.listOther) { other in
                        VStack(spacing: 8) {
                            Text(String(other.name))
                            AsyncImage(url: URL(string: other.image), scale: 5)
                            HStack(spacing: 10) {
                                Text("Stock: " + String(other.stock))
                                Spacer()
                                    .frame(width: 4)
                                Button(action: {
                                    if other.added == false {
                                        other.quantity = 1
                                        other.stock -= 1
                                        pantryManager.cartItems.append(other)
                                    } else {
                                        other.quantity = 0
                                        other.stock += 1
                                        pantryManager.cartItems.removeAll(where: { $0.name == other.name })
                                    }
                                    other.added = !(other.added)
                                }) {
                                    Image(systemName: "plus.circle")
                                }
                                .foregroundColor(other.added ? .gray : .blue)
                                .background(other.added ? Color.gray.opacity(0.3) : .clear)
                            }
                        }
                        .padding(6)
                        .border(.gray, width: 1)
                        .background(Color.white)
                        .padding(8)
                    }
                    .padding(.top, 5)
                }
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

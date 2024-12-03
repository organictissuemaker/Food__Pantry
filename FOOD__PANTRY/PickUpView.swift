//
//  PickUpView.swift
//  FOOD__PANTRY
//
//  Created by Zena Wu on 11/21/24.
//

// hihi this is karen commenting
import SwiftUI
import SwiftData


struct PickUpView: View {
    @Environment(\.modelContext) private var context
    
    @State var pantryManager : PantryManager
    @Query var orderNum: [OrderNum] // TODO: check if @Query
    
    @State var selectedDate: Date = Date()
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var studentID = ""
    @State private var notReady: Bool = false
    
    func isWeekend(date: Date) -> Bool {
            let calendar = Calendar.current
            let weekday = calendar.component(.weekday, from: date)
            return weekday == 1 || weekday == 7 // 1 = Sunday, 7 = Saturday
        }
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
                    .frame(height: 10)
                HStack {
                    VStack(alignment: .leading, spacing: 0){
                        Text("            Schedule Pickup".capitalized)
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                    .frame(height: 10)
                VStack(alignment: .center, spacing: 0) {
                    DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
                        .padding(.horizontal)
                        .datePickerStyle(.graphical)
                        .background(Color.white)
                        .padding(10)
                        .onChange(of: selectedDate) { newDate in
                            if isWeekend(date: newDate) {
                                selectedDate = Date()}
                        }
                    
                    HStack() {
                        Text(selectedDate.formatted(date: .abbreviated, time: .shortened))
                            .font(.system(size: 16))
                            .foregroundColor(Color.white)
                            .padding()
                            .animation(.spring(), value: selectedDate)
                            .frame(width: 500)
                            .animation(.spring(), value: selectedDate)
                    }
                }
//                Spacer()
//                    .frame(height: 15)
            }
            .padding([Edge.Set.leading, Edge.Set.trailing], 10)
            // .background(Color.blue.opacity(0.7))
            
            VerifyInformationView(pantryManager: $pantryManager, firstName: $firstName, lastName: $lastName, studentID: $studentID, notReady: $notReady)
            //                    .tabItem {
            //                        Image(systemName: "house.fill")
            //                        Text("Shop")
            //                    }
            //
            //                CartView()
            //                    .tabItem {
            //                        Image(systemName: "cart.fill")
            //                        Text("Cart")
            //                    }
            //
            //                PickupView()
            //                    .tabItem {
            //                        Image(systemName: "calendar.badge.clock")
            //                        Text("Pickup")
            //                    }
            //
            //            Spacer()
        }
        .background(Color.blue.opacity(0.7))
    }
}

struct VerifyInformationView: View {
    @Environment(\.modelContext) private var context
    
    @Binding var pantryManager : PantryManager
    @Query var orderNum: [OrderNum] // // TODO: check if @Query
    @Binding var firstName: String
    @Binding var lastName: String
    @Binding var studentID: String
    @Binding var notReady: Bool
    var number: String = "0"

    var body: some View {
        VStack {
            HStack {
                Text("Verify Information".capitalized)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding(10)
                Image(systemName: "person.crop.circle") // Bear icon placeholder
                    .font(.largeTitle)
            }

            VStack(alignment: .leading) {
                TextField("First Name (e.g. Oski)", text: $firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.black)

                TextField("Last Name (e.g. Bear)", text: $lastName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.black)

                TextField("Cal Student ID (e.g. 3031234567)", text: $studentID)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.black)
                    //.keyboardType(.numberPad)
            }
            .padding([Edge.Set.leading, Edge.Set.trailing], 15)
            Spacer()
                .frame(height: 25)
            HStack {
                Button(action: {
                    if firstName.count > 0 && lastName.count > 0 && studentID.count == 10 {
                        firstName = ""
                        lastName = ""
                        studentID = ""
                        for item in pantryManager.cartItems {
                            item.added = false
                            if item.stock == 0 {
                                pantryManager.pantryItems.removeAll(where: { $0.name == item.name })
                                pantryManager.fillLists()
                            }
                        }
                        pantryManager.cartItems.removeAll()
                        let newOrderNum = OrderNum(num: getOrderNum() + 1) // FIX
                        
                        context.insert(newOrderNum)
                        do {
                            try context.save()
                            // context.delete(orderNum[0]) // FIX
                        } catch {
                            print("error")
                        }
                        notReady = false
                    } else {
                        notReady = true
                    }
                }) {
                    Spacer()
                    Text("Ready! (Order #" + String(getOrderNum()) + ")") // String(orderNum[0].num)
                        .bold()
                        .foregroundColor(.green)
                    Spacer()
                }
                    // .frame(height: 15)
            }
            .padding(15)
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal)
            Text(notReady ? "Please finish filling out your info first!" : "")
                .bold()
                .foregroundColor(.red)
            Spacer()
        }
        // .background(Color.blue.opacity(0.7))
        .foregroundColor(.white)
    }
    
    private func getOrderNum() -> Int {
        let fetchDescriptor = FetchDescriptor<OrderNum>()
        var num: Int = 0
        do {
            let listOrderNums = try context.fetch(fetchDescriptor)
            for thing in listOrderNums {
                num += 1
            }
        } catch {
            num = 5
            }
        return num
    }
}

//struct CartView: View {
//    var body: some View {
//        VStack {
//            Text("Cart Page")
//                .font(.largeTitle)
//                .padding()
//        }
//        .background(Color.green.opacity(0.2))
//    }
//}
//
//struct PickupView: View {
//    var body: some View {
//        VStack {
//            Text("Pickup Page")
//                .font(.largeTitle)
//                .padding()
//        }
//        .background(Color.orange.opacity(0.2))
//    }
//}


//#Preview {
//    PickUpView(pantryManager: PantryManager(), orderNum: [OrderNum(num: 0)])
//}

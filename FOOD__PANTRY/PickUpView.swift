//
//  PickUpView.swift
//  FOOD__PANTRY
//
//  Created by Zena Wu on 11/21/24.
//

// hihi this is karen commenting
import SwiftUI


struct PickUpView: View {
    //@Environment(\.modelContext) private var context
    @State var selectedDate: Date = Date()
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var studentID = ""
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
                    .frame(height: 10)
                HStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 10){
                        Text("                  Schedule Pickup".capitalized)
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                VStack(alignment: .center, spacing: 0) {
                    DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
                        .padding(.horizontal)
                        .datePickerStyle(.graphical)
                        .background(Color.white)
                        .padding(10)
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
            
            VerifyInformationView(firstName: $firstName, lastName: $lastName, studentID: $studentID)
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
    //@Environment(\.modelContext) private var context
    @Binding var firstName: String
    @Binding var lastName: String
    @Binding var studentID: String

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

                TextField("Last Name (e.g. Bear)", text: $lastName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                TextField("Cal Student ID (e.g. 3031234567)", text: $studentID)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    //.keyboardType(.numberPad)
            }
            .padding([Edge.Set.leading, Edge.Set.trailing], 15)
            Spacer()
                .frame(height: 25)

            HStack {
                Spacer()
                Text("Ready!")
                    .bold()
                    .foregroundColor(.green)
                Spacer()
                    // .frame(height: 15)
            }
            .padding(15)
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal)

            Spacer()
        }
        // .background(Color.blue.opacity(0.7))
        .foregroundColor(.white)
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


#Preview {
    PickUpView()
}

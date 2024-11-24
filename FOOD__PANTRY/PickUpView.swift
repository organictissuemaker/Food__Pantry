//
//  PickUpView.swift
//  FOOD__PANTRY
//
//  Created by Zena Wu on 11/21/24.
//

// hihi this is karen commenting
import SwiftUI

struct PickUpView: View {
    @State var selectedDate: Date = Date()
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var studentID = ""
    
        var body: some View {
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading, spacing: 10){
                    Text("          Schedule Pickup:".capitalized)
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .padding(10)
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
                Spacer()
            }
            .padding(10)
            .background(Color.blue.opacity(0.7))
            
            TabView {
                // First Tab: Current Practice View
                VerifyInformationView(firstName: $firstName, lastName: $lastName, studentID: $studentID)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Shop")
                    }

                CartView()
                    .tabItem {
                        Image(systemName: "cart.fill")
                        Text("Cart")
                    }

                PickupView()
                    .tabItem {
                        Image(systemName: "calendar.badge.clock")
                        Text("Pickup")
                    }
            }
        }
}

struct VerifyInformationView: View {
    @Binding var firstName: String
    @Binding var lastName: String
    @Binding var studentID: String

    var body: some View {
        VStack {
            Text("Verify Information")
                .font(.headline)
                .padding(.top)

            Image(systemName: "person.crop.circle") // Bear icon placeholder
                .font(.largeTitle)
                .padding(.top)

            VStack(alignment: .leading) {
                TextField("First Name e.g. Oski", text: $firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                TextField("Last Name e.g. Bear", text: $lastName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                TextField("Cal Student ID e.g. 3031234567", text: $studentID)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    //.keyboardType(.numberPad)
            }
            .padding()

            HStack {
                Spacer()
                Text("Ready!")
                    .bold()
                    .foregroundColor(.green)
                Spacer()
            }
            .padding()
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal)

            Spacer()
        }
        .background(Color.blue.opacity(0.7))
        .foregroundColor(.white)
    }
}

struct CartView: View {
    var body: some View {
        VStack {
            Text("Cart Page")
                .font(.largeTitle)
                .padding()
        }
        .background(Color.green.opacity(0.2))
    }
}

struct PickupView: View {
    var body: some View {
        VStack {
            Text("Pickup Page")
                .font(.largeTitle)
                .padding()
        }
        .background(Color.orange.opacity(0.2))
    }
}


#Preview {
    PickUpView()
}

//
//  PickUpView.swift
//  FOOD__PANTRY
//
//  Created by Zena Wu on 11/21/24.
//


import SwiftUI

struct PickUpView: View {
    @State var selectedDate: Date = Date()
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
        }
}


#Preview {
    PickUpView()
}

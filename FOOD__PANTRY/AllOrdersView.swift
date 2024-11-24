//
//  pastordersview.swift
//  FOOD__PANTRY
//
//  Created by Bailey on 11/23/24.
//

import Foundation
import SwiftUI

struct Order: Identifiable {
    let id = UUID()
    let date: String
    let customerName: String
    let orderId: String
}

struct OrderHistoryView: View {
    let sampleOrders = [
        Order(date: "Nov 10, 2024", customerName: "First/LastName", orderId: "ID12345"),
        Order(date: "October 23, 2024", customerName: "First/LastName", orderId: "ID12344"),
        Order(date: "September 23, 2024", customerName: "First/LastName", orderId: "ID12343"),
        Order(date: "August 23, 2024", customerName: "First/LastName", orderId: "ID12342")
    ]

    var body: some View {
        NavigationView {
            VStack {
                Text("All Orders")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                    .foregroundColor(.white)

                List(sampleOrders) { order in
                    VStack(alignment: .leading) {
                        Text(order.date)
                            .font(.headline)
                        Text(order.customerName)
                            .font(.subheadline)
                        Text(order.orderId)
                            .font(.footnote)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
        .tabItem {
            Image(systemName: "cart")
            Text("Orders")
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

#Preview {
    OrderHistoryView()
}

    



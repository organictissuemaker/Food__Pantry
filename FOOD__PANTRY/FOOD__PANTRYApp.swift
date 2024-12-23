//
//  FOOD__PANTRYApp.swift
//  FOOD__PANTRY
//
//  Created by Zena Wu on 11/21/24.
//

import SwiftUI
import SwiftData

@main
struct FOOD__PANTRYApp: App {
//    var sharedModelContainer: ModelContainer = {
//        let schema = Schema([
//            Item.self,
//        ])
//        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
//
//        do {
//            return try ModelContainer(for: schema, configurations: [modelConfiguration])
//        } catch {
//            fatalError("Could not create ModelContainer: \(error)")
//        }
//    }()

    var body: some Scene {
        WindowGroup {
            ContentView() //root view
                .modelContainer(for: [OrderNum.self]) // CHANGED
                // .modelContainer(for: [PantryManager.self, FoodItem.self])
        }
        // .modelContainer(sharedModelContainer) // CHANGED
    }
}

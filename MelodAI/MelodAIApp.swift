//
//  MelodAIApp.swift
//  
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

@main
struct MelodAIApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

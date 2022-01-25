//
//  BatteryManagerApp.swift
//  Shared
//
//  Created by Ajitem Sahasrabuddhe on 25/01/22.
//

import SwiftUI

@main
struct BatteryManagerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

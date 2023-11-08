//
//  ActivitiesEcoVentApp.swift
//  ActivitiesEcoVent
//
//  Created by copper-orka on 8/11/2023.
//

import SwiftUI

@main
struct ActivitiesEcoVentApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

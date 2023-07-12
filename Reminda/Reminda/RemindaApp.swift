//
//  RemindaApp.swift
//  Reminda
//
//  Created by Gbolahan on 11/07/2023.
//

import SwiftUI

@main
struct RemindaApp: App {
    let persistenceController = PersistenceController.shared
    @AppStorage("isDarkMode") var isDarkMode: Bool = false


    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .preferredColorScheme(isDarkMode ? .dark : .light)

        }
    }
}

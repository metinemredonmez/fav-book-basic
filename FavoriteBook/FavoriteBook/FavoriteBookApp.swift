//
//  FavoriteBookApp.swift
//  FavoriteBook
//
//  Created by Apple on 15.08.2022.
//

import SwiftUI

@main
struct FavoriteBookApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

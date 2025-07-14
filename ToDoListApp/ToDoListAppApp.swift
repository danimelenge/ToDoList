//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by Daniel Melenge Rojas on 14/07/25.
//

import SwiftUI
import SwiftData

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: TaskItem.self)
    }
}

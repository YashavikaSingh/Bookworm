//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Yashavika Singh on 18.06.24.
//

import SwiftUI
import SwiftData

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}

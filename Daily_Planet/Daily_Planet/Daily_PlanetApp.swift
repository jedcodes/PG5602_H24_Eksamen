//
//  Daily_PlanetApp.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 27/11/2024.
//

import SwiftUI
import SwiftData
@main
struct Daily_PlanetApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }
        .modelContainer(for: [Article.self, Category.self])
    }
}

//
//  FakePagesApp.swift
//  FakePages
//
//  Created by Claudia De Luca on 13/11/23.
//

import SwiftUI
import SwiftData

@main
struct FakePagesApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }.modelContainer(for: DataText.self )
    }
}

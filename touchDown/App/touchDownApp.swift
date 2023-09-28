//
//  touchDownApp.swift
//  touchDown
//
//  Created by Mohamed Magdy on 10/09/2023.
//

import SwiftUI

@main
struct touchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}

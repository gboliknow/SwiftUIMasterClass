//
//  FruitAppApp.swift
//  FruitApp
//
//  Created by Gbolahan on 17/04/2023.
//

import SwiftUI

@main
struct FruitAppApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
              OnboardingView()
            } else {
              ContentView()
            }
        }
    }
}

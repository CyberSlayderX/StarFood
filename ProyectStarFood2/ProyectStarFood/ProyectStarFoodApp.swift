//
//  ProyectStarFoodApp.swift
//  ProyectStarFood
//
//  Created by DamII on 27/06/23.
//

import SwiftUI

@main

struct ProyectStarFoodApp: App {
@StateObject var recipesViewModel = RecipesViewModel()
    var body: some Scene {
        WindowGroup {
           // ContentView()
            LoginView()
                .environmentObject(recipesViewModel)
        }
    }
}

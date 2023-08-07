//
//  ContentView.swift
//  ProyectStarFood
//
//  Created by DamII on 27/06/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    var body: some View {
        NavigationView{
            ScrollView{
                RecipeList(recipe:recipesVM.recipes)
            }
            .navigationTitle("LISTA DE PLATOS")
        }
        .navigationViewStyle(.stack)
}
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}

//
//  TarBar.swift
//  ProyectStarFood
//
//  Created by DamII on 27/06/23.
//

import SwiftUI

struct TarBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("INICIO", systemImage: "house")
                }
            CategoriesView()
                .tabItem{
                    Label("CATEGORIAS", systemImage: "square.fill.text.grid.1x2")
                }
            
            AddRecipeView()
                .tabItem{
                    Label("NUEVO", systemImage: "plus")
                }
            HomeViewVideo()
                .tabItem{
                    Label("VIDEO", systemImage: "play")
                }
            
            
        }
    }
}

struct TarBar_Previews: PreviewProvider {
    static var previews: some View {
        TarBar()
            .environmentObject(RecipesViewModel())
    }
}

//
//  NewRecipeView.swift
//  ProyectStarFood
//
//  Created by DamII on 27/06/23.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    var body: some View {
        NavigationView{
            Button("AGREGAR NUEVA RECETA"){
                showAddRecipe = true
            }
                .navigationTitle("Nuevo")
    }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddRecipe){
            AddRecipeView()
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}

//
//  RecipesViewModel.swift
//  ProyectStarFood
//
//  Created by DamII on 28/06/23.
//

import Foundation
class  RecipesViewModel: ObservableObject{
    @Published private(set) var recipes: [Recipe] = [ ]
    init(){
        recipes = Recipe.all
    }
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
}

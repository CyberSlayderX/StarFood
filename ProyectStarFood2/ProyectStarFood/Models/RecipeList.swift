//
//  RecipeList.swift
//  ProyectStarFood
//
//  Created by DamII on 27/06/23.
//

import SwiftUI

struct RecipeList: View {
    var recipe:[Recipe]
    var body: some View {
        VStack{
            HStack{
            Text("\(recipe.count)\(recipe.count > 1 ? " PLATOS":"recipe")")
                .font(.headline)
                .fontWeight(.medium)
                .opacity(0.7)
            Spacer()
        }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15){
                ForEach(recipe){
                    recipe in
                    NavigationLink(destination: RecipeView(recipe: recipe)){
                        RecipeCard(recipe: recipe)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            RecipeList(recipe: Recipe.all)
        }
        
    }
}

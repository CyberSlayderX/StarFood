//
//  RecipeView.swift
//  ProyectStarFood
//
//  Created by DamII on 27/06/23.
//

import SwiftUI

struct RecipeView: View {
    var recipe:Recipe
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: recipe.image)){Image in
                Image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            } placeholder:{
                Image(systemName:"photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100,height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            VStack(spacing: 38){
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
            VStack(alignment: .leading, spacing: 30){
                if !recipe.description.isEmpty{
                    Text(recipe.description)
                }
                if !recipe.ingredients.isEmpty{
                    VStack(alignment: .leading, spacing: 20){
                        Text("INGREDIENTES")
                            .font(.headline)
                        Text(recipe.ingredients)
                    }
                }
                if !recipe.directions.isEmpty{
                VStack(alignment: .leading, spacing: 20){
                            Text("PREPARACION")
                        .font(.headline)
                    Text(recipe.directions)
                }
                }
                
                if !recipe.datePublished.isEmpty{
                VStack(alignment: .leading, spacing: 20){
                            Text("FECHA")
                        .font(.headline)
                    Text(recipe.datePublished)
                }
                }
                if !recipe.url.isEmpty{
                VStack(alignment: .leading, spacing: 20){
                            Text("URL")
                        .font(.headline)
                    Text(recipe.url)
                }
                }
                }
            .frame(width: .infinity,alignment:.leading)
            }
            .padding(50)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
    
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}

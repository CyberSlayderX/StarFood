//
//  AddRecipeView.swift
//  ProyectStarFood
//
//  Created by DamII on 28/06/23.
//
import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    @State private var name:String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var description:String = ""
    @State private var ingredients:String = ""
    @State private var directions:String = ""
    @State private var navigateToRecipe = false
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("NOMBRE"))
                {
                    TextField("",text: $name)
                }
                Section(header: Text("CATEGORIA"))
                {
                    Picker("SELECCIONAR", selection: $selectedCategory){
                        ForEach(Category.allCases){
                            category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    
                    .pickerStyle(.menu)
                }
                Section(header: Text("DESCRIPCION"))
                {
                    TextEditor(text: $description)
                    
                }
                Section(header: Text("INGREDIENTES"))
                {
                    TextEditor(text: $ingredients)
                    
                }
                Section(header: Text("PROCEDIMIENTO"))
                {
                    TextEditor(text: $directions)
                    
                }
            }
            .toolbar(content:{
                ToolbarItem(placement: .navigationBarLeading){
                    Button{
                        dismiss()
                    }label:{
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem{
                    NavigationLink(isActive: $navigateToRecipe){
                    RecipeView(recipe: recipesVM.recipes.sorted{                          $0.datePublished > $1.datePublished }[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button{
                           saveRecipe()
                           navigateToRecipe = true
                       } label:{
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                        .disabled(name.isEmpty)
                    }
                }
            })
                
            .navigationTitle("NUEVA RECETA")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}
extension AddRecipeView{
    private func saveRecipe(){
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients,directions: description,category: selectedCategory.rawValue, datePublished: datePublished, url: "")
        recipesVM.addRecipe(recipe: recipe)
    }
}

//
//  CategoriesView.swift
//  ProyectStarFood
//
//  Created by DamII on 27/06/23.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView{
            
            List{
                ForEach(Category.allCases){category in
                    NavigationLink{
                        CategoryView(category: category)
                    }label:{
                    Text(category.rawValue + "")
                    }
                }
            }
                .navigationTitle("CATEGORIAS")
    }
        .navigationViewStyle(.stack)
}
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}

//
//  ContentView.swift
//  ProyectStarFood
//
//  Created by DamII on 27/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TarBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}

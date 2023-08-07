//
//  Home.swift
//  ProyectStarFood
//
//  Created by DamII on 30/06/23.
//

import SwiftUI

struct HomeViewVideo: View {
    init(){
        UITabBar.appearance().isHidden = true
    }
    @State var currentTab = "Reels"
    var body: some View {
        
        VStack(spacing: 0){
            TabView(selection: $currentTab){
                
                ContentView()
                   .tag("house.fill")
                
                
                CategoriesView()
                    .tag("magnifyingglass")
                
                ReelsView()
                    .tag("Reels")
                
                AddRecipeView()
                    .tag("suit.heart")
                
                LoginView()
                    .tag("person.circle")
            }
            
            HStack(spacing: 0){
                ForEach(
                    ["house.fill","magnifyingglass","Reels","suit.heart","person.circle"], id : \.self){
                        image in
                        TabBarButton(image: image, isSystemImage: image != "Reels" , currentTab: $currentTab)
                    }
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
            .overlay(Divider(), alignment: .top)
            .background(currentTab == "Reels" ? .black: .clear)
        }
    }
}

struct HomeViewVideo_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewVideo()
    }
}

struct TabBarButton: View{
    var image: String
    var isSystemImage: Bool
    @Binding var currentTab: String
    var body: some View{
        Button{
            withAnimation{currentTab = image}
        } label: {
            ZStack{
                if isSystemImage{
                    Image(systemName: image)
                        .font(.title2)
                }
                else {
                    Image(image)
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                }
            }
            .foregroundColor(currentTab == image ? currentTab == "Reels" ? . white: .primary: .gray)
            .frame(maxWidth: .infinity)
        }
    }
    
}

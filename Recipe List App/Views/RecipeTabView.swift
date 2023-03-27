//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Артур Олехно on 06/12/2022.
//

import SwiftUI

struct RecipeTabView: View {
    
    @State var selctedTab = Constants.featuredTab
    
    var body: some View {
        TabView (selection: $selctedTab){
            RecipeFeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
                .tag(Constants.featuredTab)
            
            RecipeCategoryView(selectedTab: $selctedTab)
                .tabItem {
                    VStack {
                        Image(systemName: "square.grid.2x2")
                        Text("Featured")
                    }
                }
                .tag(Constants.categoriesTab)
            
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
                .tag(Constants.listTab)
        }
        .environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}

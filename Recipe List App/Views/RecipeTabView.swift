//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Артур Олехно on 06/12/2022.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView {
            Text("Fearured View")
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}

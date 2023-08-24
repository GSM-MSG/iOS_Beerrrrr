//
//  MainView.swift
//  beerlist with B
//
//  Created by 이승화 on 2023/08/17.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        HStack {
            TabView {
                BeerListView()
                    .tabItem{
                        Label("BeerList", systemImage: "1.circle")
                    }
                    
                BeerSearchView()
                    .tabItem{
                        Label("BeerSearch", systemImage: "2.circle")
                    }

                RandomBeerView()
                    .tabItem{
                        Label("RandomBeer", systemImage: "3.circle")
                    }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

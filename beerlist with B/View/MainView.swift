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
            TabView{
                BeerListView()
                    .tabItem{
                        VStack{
                            Image(systemName: "1.circle")
                            Text("Beer List")
                        }
                    }

                BeerSearchView()
                    .tabItem{
                        VStack{
                            Image(systemName: "2.circle")
                            Text("Beer Search")
                        }
                    }

                RandomBeerView()
                    .tabItem{
                        VStack{
                            Image(systemName: "3.circle")
                            Text("Random Beer")
                        }
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

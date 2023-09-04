//
//  BeerSearchView.swift
//  beerlist with B
//
//  Created by 이승화 on 2023/08/17.
//

import SwiftUI

struct BeerSearchView: View {
    
    @State private var beerSearch: String = ""
        
    var body: some View {
        NavigationStack {
            Image(systemName: "photo.circle.fill")
                .resizable()
                .frame(width: 300, height: 300)
                .navigationTitle("Search By Id")
            Spacer()
        }
        .searchable(text: $beerSearch, prompt: "Search")
    }
}

struct BeerSearchView_Previews: PreviewProvider {
    static var previews: some View {
        BeerSearchView()
    }
}

//
//  BeerList.swift
//  beerlist with B
//
//  Created by 이승화 on 2023/08/17.
//

import SwiftUI

struct BeerListView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Vice Bier") {
                    Text("실패")
                }
            }
            .navigationTitle("Beer List")
            .listStyle(.plain)
        }
    }
}

struct BeerListView_Previews: PreviewProvider {
    static var previews: some View {
        BeerListView()
    }
}

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
                HStack {
                    Image("keg")
                        .resizable()
                        .frame(width: 63, height: 125)
                        .padding(.trailing, 90)
                    NavigationLink(destination: BeerListDetailView(), label: {
                        Text("Vice Bier")
                    })
                    .font(.system(size: 30))
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

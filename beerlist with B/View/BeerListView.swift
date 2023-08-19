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
                    NavigationLink("Vice Bier") {
                        Image("keg")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 300)
                        Text("21")
                            .font(.system(size: 12))
                            .foregroundColor(Color.yellow)
                        Text("Vice Bier")
                            .font(.system(size: 30))
                        Text("Our take on the classic German Kristallweizen. A clear German wheat beer, layers of bubblegum and vanilla perfectly balanced with the American and New Zealand hops.")
                            .font(.system(size: 22))
                            .padding(.horizontal)
                            .foregroundColor(Color.gray)
                        Spacer()
                    }
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

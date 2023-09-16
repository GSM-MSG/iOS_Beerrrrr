//
//  BeerList.swift
//  beerlist with B
//
//  Created by 이승화 on 2023/08/17.
//

import SwiftUI
import Kingfisher

struct BeerListView: View {
    let beerListAPI = BeerListAPI()
    @State private var beerlist: BeerList?
    
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    if let beerlist {
                        KFImage(URL(string: beerlist.imageURL))
                            .resizable()
                            .frame(width: 63, height: 125)
                            .padding(.trailing, 90)
                        NavigationLink(destination: BeerListDetailView(), label: {Text(beerlist.name)})
                        .font(.system(size: 30))
                    } else {
                        ProgressView()
                    }
                }
            }
            .navigationTitle("Beer List")
            .listStyle(.plain)
        }
        .onAppear{
            BeerListAPI.getBeerListData { beerlist in
                print(beerlist)
                self.beerlist = beerlist
            }
        }
    }
}
struct BeerListView_Previews: PreviewProvider {
    static var previews: some View {
        BeerListView()
    }
}

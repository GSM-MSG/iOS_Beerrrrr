//
//  BeerListDetailView.swift
//  beerlist with B
//
//  Created by Mac on 2023/08/20.
//

import SwiftUI
import Kingfisher

struct BeerListDetailView: View {
    let beerlistAPI = BeerListAPI()
    @State private var beerlist: BeerList?
    
    var body: some View {
        ScrollView {
            VStack {
                Spacer(minLength: 20)
                
                if let beerlist {
                    
                    KFImage(URL(string: beerlist.imageURL))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300)
                    
                    Text("\(beerlist.beerId)")
                        .font(.system(size: 12))
                        .foregroundColor(Color.orange)
                    
                    Text(beerlist.name)
                        .font(.system(size: 30))
                    
                    Text(beerlist.description)
                        .font(.system(size: 22))
                        .padding(.horizontal)
                        .foregroundColor(Color.gray)
                    
                } else {
                    ProgressView()
                }
            }
        }
        .onAppear{
            BeerListAPI.getBeerListData { beerlist in
                print(beerlist)
                self.beerlist = beerlist
            }
        }
    }
}
struct BeerListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BeerListDetailView()
    }
}

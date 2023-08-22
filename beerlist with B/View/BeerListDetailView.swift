//
//  BeerListDetailView.swift
//  beerlist with B
//
//  Created by Mac on 2023/08/20.
//

import SwiftUI

struct BeerListDetailView: View {
    var body: some View {
        ScrollView {
            VStack {
                Spacer(minLength: 20)
                Image("keg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                Text("21")
                    .font(.system(size: 12))
                    .foregroundColor(Color.orange)
                Text("Vice Bier")
                    .font(.system(size: 30))
                Text("Our take on the classic German Kristallweizen. A clear German wheat beer, layers of bubblegum and vanilla perfectly balanced with the American and New Zealand hops.")
                    .font(.system(size: 22))
                    .padding(.horizontal)
                    .foregroundColor(Color.gray)
            }
        }
    }
}

struct BeerListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BeerListDetailView()
    }
}

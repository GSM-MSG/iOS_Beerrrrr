//
//  RandomBeerView.swift
//  beerlist with B
//
//  Created by 이승화 on 2023/08/17.
//

import SwiftUI

struct RandomBeerView: View {
    
    @State private var showBeer = false
    
    var body: some View {
        NavigationView {
            Button {
                self.showBeer.toggle()
            } label: {
                Text("Reset")
                    .frame(width:110, height:50)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(30)
            }.sheet(isPresented: $showBeer) {
                BeerListDetailView()
            }.navigationTitle("RandomBeer")
        }
    }
}

struct RandomBeerView_Previews: PreviewProvider {
    static var previews: some View {
        RandomBeerView()
    }
}

//
//  BeerListAPI.swift
//  beerlist with B
//
//  Created by Mac on 2023/09/14.
//

import Foundation

struct BeerList: Codable, Identifiable {
    var name: String
    var imageURL: String
    var description: String
    var beerId: Int
    let id = UUID()

    enum CodingKeys: String, CodingKey {
        case name
        case imageURL = "image_url"
        case description
        case beerId = "id"
    }
}

final class BeerListAPI {
    
    static func getBeerListData(completion: @escaping (BeerList?) -> ()) {
        
        guard let url = URL(string: "https://api.punkapi.com/v2/beers?page=1&size=25") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data else {return}
            
            let beerList = try! JSONDecoder().decode([BeerList].self, from: data)
            
            DispatchQueue.main.async {
                completion(beerList.first)
            }
        }.resume()
    }
}

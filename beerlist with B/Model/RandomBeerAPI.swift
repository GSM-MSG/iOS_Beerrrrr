import Foundation

struct Beer: Codable, Identifiable {
    var name: String
    var imageURL: String
    var description: String
    var beerId: Int
    let id = UUID()
    
    enum CodingKeys : String, CodingKey {
        case name
        case imageURL = "image_url"
        case description
        case beerId = "id"
    }
}

final class RandomBeerAPI {
    
    func getRandomBeerData(completion: @escaping (Beer) -> ()) {
        
        guard let url = URL(string: "https://api.punkapi.com/v2/beers/random") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else {return}
            
            let randomBeer = try! JSONDecoder().decode([Beer].self, from: data)
            
            DispatchQueue.main.async {
                completion(randomBeer.first ?? Beer(name: "", imageURL: "", description: "", beerId: 0))
            }
        }.resume()
    }
}

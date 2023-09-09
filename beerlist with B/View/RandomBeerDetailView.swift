import SwiftUI

struct RandomBeerDetailView: View {
    let randomBeerAPI = RandomBeerAPI()
    @State private var beer: Beer?
    
    var body: some View {
        ScrollView {
            VStack {
                Spacer(minLength: 20)
                Image("keg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                
                if let beerId = beer?.beerId {
                    Text("\(beerId)")
                        .font(.system(size: 12))
                        .foregroundColor(Color.orange)
                    
                    if let beerName = beer?.name {
                        Text(beerName)
                            .font(.system(size: 30))
                    }
                    
                    if let beerDescription = beer?.description {
                        Text(beerDescription)
                            .font(.system(size: 22))
                            .padding(.horizontal)
                            .foregroundColor(Color.gray)
                    }
                } else {
                    Text("")
                }
            }
        }
        .onAppear{
            randomBeerAPI.getRandomBeerData { beer in
                print(beer)
                self.beer = beer
            }
        }
    }
}

struct RandomBeerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RandomBeerDetailView()
    }
}

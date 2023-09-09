import SwiftUI
import Kingfisher

struct RandomBeerDetailView: View {
    let randomBeerAPI = RandomBeerAPI()
    @State private var beer: Beer?
    
    var body: some View {
        ScrollView {
            VStack {
                Spacer(minLength: 20)
                
                if let beer {
                    KFImage(URL(string:beer.imageURL))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300)
                    Text("\(beer.beerId)")
                        .font(.system(size: 12))
                        .foregroundColor(Color.orange)
                    
                    Text(beer.name)
                        .font(.system(size: 30))
                    
                    Text(beer.description)
                        .font(.system(size: 22))
                        .padding(.horizontal)
                        .foregroundColor(Color.gray)
                } else {
                    Text("로딩 중...")
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

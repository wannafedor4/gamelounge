import SwiftUI

struct GameCard: View {
    
    @State var gameTitle = "Game"
    @State var gameIcon = "Placeholder Icon"
    
    var body: some View {
        NavigationLink {
            ScrollView {
                HStack {
                    VStack(alignment: .leading) {
                        Text(gameTitle)
                            .font(.title)
                            .bold()
                        Text("Some info here ye totally")
                    }
                    Spacer()
                    Image(gameIcon)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(.rect(cornerRadius: 10))
                }
                .navigationTitle(gameTitle)
            }
            .padding()
        } label: {
            VStack {
                Image(gameIcon)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(.rect(cornerRadius: 10))
                Text(gameTitle)
                    .frame(maxWidth: 100)
            }
            .padding()
        }
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    NavigationStack {
        GameCard(gameTitle: "Gamey", gameIcon: "Placeholder Icon")
        GameCard(gameTitle: "Gamey Demo", gameIcon: "Placeholder Icon")
        GameCard(gameTitle: "Gamey 2: Mission Possible", gameIcon: "Placeholder Icon")
    }
    .padding(50)
    .frame(width: 700)
}

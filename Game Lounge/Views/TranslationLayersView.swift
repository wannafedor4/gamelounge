import SwiftUI

struct TranslationLayersView: View {
    var body: some View {
        Text("Note: These do nothing")
            .padding(.top)
        List {
            HStack() {
                VStack(alignment: .leading) {
                    Text("PlayCover")
                        .bold()
                    Text("Play iOS games natively")
                    HStack {
                        Button("Install") {
                            
                        }
                    }
                }
                Spacer()
                Image("PlayCoverIcon")
                    .resizable()
                    .frame(width: 60, height: 60)
            }
            HStack() {
                VStack(alignment: .leading) {
                    Text("Whisky")
                        .bold()
                    Text("Translate Windows apps to Mac apps")
                    Button("Install") {
                        
                    }
                }
                Spacer()
                Image("WhiskyIcon")
                    .resizable()
                    .frame(width: 60, height: 60)
            }
        }
        .padding()
        .listStyle(.sidebar)
    }
    
}

#Preview {
    ContentView(sidebarSelection: "translation")
}

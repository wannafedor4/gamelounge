import SwiftUI

struct LoungeView: View {
    var body: some View {
        ScrollView {
            VStack {
                Banner(title: "Development Preview", subtitle: "That means very buggy")
            }
            .padding()
            Link("Join the Discord", destination: URL(string: "https://discord.gg/QppTd5Ea9K")!)
        }
    }
}

#Preview {
    ContentView(sidebarSelection: "lounge")
}

struct Banner: View {
    var title: String
    var subtitle: String
    var body: some View {
        Link(destination: URL(string: "https://github.com/wannafedor4/gamelounge")!) {
            RoundedRectangle(cornerRadius: 15)
                .frame(height: 150)
                .foregroundStyle(.red)
                .overlay(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text(title)
                            .font(.title)
                            .bold()
                        Text(subtitle)
                            .italic()
                    }
                    .padding()
                    .foregroundStyle(.white)
            }
        }
        
    }
}

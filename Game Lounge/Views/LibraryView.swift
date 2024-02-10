import SwiftUI
import Swift
import Foundation

struct LibraryView: View {
    var body: some View {
        NavigationStack {
            GameCard(gameTitle: "Gamey", gameIcon: "Placeholder Icon")
                .navigationTitle("Library")
        }
    }
}

#Preview {
    ContentView(sidebarSelection: "library")
}

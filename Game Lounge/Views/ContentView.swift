import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            List {
                NavigationLink {
                    Text("Lounge")
                } label: {
                    Label("Lounge", systemImage: "chair.lounge")
                }
                NavigationLink {
                    Text("Library")
                } label: {
                    Label("Library", systemImage: "books.vertical")
                }
                NavigationLink {
                    Text("Hot Stuff")
                } label: {
                    Label("Hot Stuff", systemImage: "flame")
                }
                NavigationLink {
                    Text("Wikis")
                } label: {
                    Label("Wikis", systemImage: "eyeglasses")
                }
            }
            .listStyle(.sidebar)
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Button {
                        
                    } label: {
                        Label("Notifications", systemImage: "bell")
                    }
                }
            }
        } detail: {
            Image(systemName: "gamecontroller.fill")
                .font(.system(size: 50))
                .foregroundColor(.secondary)
            Text("Select an item from the sidebar")
                .font(.system(size: 18, weight: .bold))
                .foregroundStyle(.secondary)
            Text("Or go do the dishes")
                .foregroundStyle(.secondary)
            
        }
    }
}

#Preview {
    ContentView()
}

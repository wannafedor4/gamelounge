import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext
    
    @State private var removalPresented = false
    @State var sidebarSelection = "lounge"
    
    @Query var games: [Game]
    
    var body: some View {
        NavigationSplitView() {
            List(selection: $sidebarSelection) {
                NavigationLink {
                    LoungeView()
                } label: {
                    Label("Lounge", systemImage: "chair.lounge")
                }.tag("lounge")
                NavigationLink {
                    TranslationLayersView()
                } label: {
                    Label("Translation Layers", systemImage: "powerplug")
                }.tag("translation")
                NavigationLink {
                    LibraryView()
                } label: {
                    Label("Library", systemImage: "books.vertical")
                }.tag("library")
                NavigationLink {
                    Text("Hot Stuff")
                } label: {
                    Label("Hot Stuff", systemImage: "flame")
                }.tag("hot")
                NavigationLink {
                    Text("Wikis")
                } label: {
                    Label("Wikis", systemImage: "eyeglasses")
                }.tag("wikis")
                Section("Library") {
                    ForEach(games) { game in
                        Text(game.displayName)
                            .contextMenu {
                                Button(role: .destructive) {
                                    removalPresented = true
                                } label: {
                                    Label("Remove", systemImage: "trash")
                                }
                                .alert("Important message", isPresented: $removalPresented) {
                                            Button("OK", role: .cancel) { }
                                        }
                            }
                    }
                }
            }
            .frame(minWidth: 200)
            .listStyle(.sidebar)
            .toolbar {
                ToolbarItem {
                    Button {
                        addSamples()
                    } label: {
                        Label("Add Game", systemImage: "plus")
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
        .background(VisualEffect())
    }
    func addSamples() {
        let gamey = Game(displayName: "Gamey", path: "/Applications/Gamey.app", type: 1)
        modelContext.insert(gamey)
        print("Plus button pressed!")
    }
}

#Preview {
    ContentView()
}


struct VisualEffect: NSViewRepresentable {
   func makeNSView(context: Self.Context) -> NSView { return NSVisualEffectView() }
   func updateNSView(_ nsView: NSView, context: Context) { }
}

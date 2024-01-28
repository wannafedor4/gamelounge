import SwiftUI

struct ContentView: View {

    @State private var notificationsPresented = false

    var body: some View {
        NavigationSplitView {
            List {
                NavigationLink {
                    LoungeView()
                } label: {
                    Label("Lounge", systemImage: "chair.lounge")
                }
                NavigationLink {
                    LibraryView()
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
                Section("Library") {
                    
                }
            }
            .listStyle(.sidebar)
            .toolbar(removing: .sidebarToggle)
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Button {
                        notificationsPresented = true
                    } label: {
                        Label("Notifications", systemImage: "bell")
                    }
                    .popover(isPresented: $notificationsPresented) {
                        Text("It's a Developer Preview, idiot.")
                            .padding()
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
}

#Preview {
    ContentView()
}


struct VisualEffect: NSViewRepresentable {
   func makeNSView(context: Self.Context) -> NSView { return NSVisualEffectView() }
   func updateNSView(_ nsView: NSView, context: Context) { }
}

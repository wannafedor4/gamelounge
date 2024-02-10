import SwiftUI
import SwiftData

@main
struct Game_LoungeApp: App {
    var body: some Scene {
        Window("Game Lounge", id: "main") {
            ContentView()
        }
        .modelContainer(for: Game.self)
        
        Settings {
            SettingsView()
        }
    }
}

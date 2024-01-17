//
//  SettingsView.swift
//  Game Lounge
//
//  Created by Gavin Gichini on 1/18/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        TabView {
            Text("Services").tabItem { Label("Services", systemImage: "gearshape") }
            Text("Library").tabItem { Label("Library", systemImage: "books.vertical") }
        }
        .frame(minWidth: 500, minHeight: 500)
    }
}

#Preview {
    SettingsView()
}

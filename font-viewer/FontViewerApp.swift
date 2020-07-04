//
//  FontViewerApp.swift
//  font-viewer
//
//  Created by Joshua Sullivan on 7/2/20.
//

import SwiftUI

@main
struct FontViewerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ContentViewModel())
        }
    }
}

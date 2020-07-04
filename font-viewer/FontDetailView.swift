//
//  FontDetailView.swift
//  font-viewer
//
//  Created by Joshua Sullivan on 7/2/20.
//

import SwiftUI

struct FontDetailView: View {

    static let sampleText: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."

    var fontName: String

    var body: some View {
        VStack {
            Text(FontDetailView.sampleText)
                .font(.custom(fontName, size: 24.0, relativeTo: .largeTitle))
                .padding()
        }
        .navigationTitle(fontName)
    }
}

struct FontDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FontDetailView(fontName: "AvenirNext-Regular")
        }
    }
}

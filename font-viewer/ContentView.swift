//
//  ContentView.swift
//  font-viewer
//
//  Created by Joshua Sullivan on 7/2/20.
//

import SwiftUI

struct ContentView: View {

    let viewModel: ContentViewModel

    @State var fontFamilies: [FontFamily] = []

    var body: some View {
        NavigationView {
            List() {
                ForEach(fontFamilies) { family in
                    Section(header: Text(family.name)) {
                        ForEach(family.fonts) { fontName in
                            NavigationLink(
                                destination: FontDetailView(fontName: fontName)) {
                                    FontListItemView(fontName: fontName)
                                }
                        }
                    }
                }
            }
            .padding(.top)
            .navigationBarHidden(true)
        }
        .onReceive(viewModel.$fontFamilies) { families in
            self.fontFamilies = families
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel())
    }
}

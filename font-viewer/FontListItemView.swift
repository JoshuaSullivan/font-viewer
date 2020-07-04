//
//  FontListItemView.swift
//  font-viewer
//
//  Created by Joshua Sullivan on 7/2/20.
//

import SwiftUI

struct FontListItemView: View {
    var fontName: String

    var body: some View {
        Text(fontName)
            .font(.custom(fontName, size: 24.0, relativeTo: .largeTitle))
    }
}

extension String: Identifiable {
    public var id: String {
        return self
    }
}

struct FontListItemView_Previews: PreviewProvider {
    static var previews: some View {
        FontListItemView(fontName: "AvenirNext-Regular")
    }
}

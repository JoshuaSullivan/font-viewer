import SwiftUI

struct FontFamily: Identifiable {
    let name: String
    let fonts: [String]

    var id: String {
        return name
    }
}

final class ContentViewModel {
    @Published var fontFamilies: [FontFamily] = []

    init() {
        fontFamilies = UIFont.familyNames
            .map { FontFamily(name: $0, fonts: UIFont.fontNames(forFamilyName: $0))}
    }
}

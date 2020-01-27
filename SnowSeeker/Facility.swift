//
//  Facility.swift
//  SnowSeeker
//
//  Created by Vincent O'Sullivan on 27/01/2020.
//  Copyright © 2020 Vincent O'Sullivan. All rights reserved.
//

import SwiftUI

struct Facility {

    /// Returns the appropriate icon for a given String (or crashes).
    /// - Parameter facility: A standard string describing a resort facility
    static func icon(for facility: String) -> some View {
        let icons = [
            "Accommodation": "house",
            "Beginners": "1.circle",
            "Cross-country": "map",
            "Eco-friendly": "leaf.arrow.circlepath",
            "Family": "person.3"
        ]

        if let iconName = icons[facility] {
            let image = Image(systemName: iconName)
                .accessibility(label: Text(facility))
                .foregroundColor(.secondary)
            return image
        } else {
            fatalError("Unknown facility type: \(facility)")
        }
    }
}

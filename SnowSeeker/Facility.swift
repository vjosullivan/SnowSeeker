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

    /// Returns an Alert with a description, corresponding to given String (or crashes).
    /// - Parameter facility: A standard string describing a resort facility
    static func alert(for facility: String) -> Alert {
        let messages = [
            "Accommodation": "This resort has popular on-site accommodation.",
            "Beginners": "This resort has lots of ski schools.",
            "Cross-country": "This resort has many cross-country ski routes.",
            "Eco-friendly": "This resort has won an award for environmental friendliness.",
            "Family": "This resort is popular with families."
        ]

        if let message = messages[facility] {
            return Alert(title: Text(facility), message: Text(message))
        } else {
            fatalError("Unknown facility type: \(facility)")
        }
    }
}

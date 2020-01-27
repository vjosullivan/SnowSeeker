//
//  SkiDetailsView.swift
//  SnowSeeker
//
//  Created by Vincent O'Sullivan on 25/01/2020.
//  Copyright © 2020 Vincent O'Sullivan. All rights reserved.
//

import SwiftUI

struct SkiDetailsView: View {

    let resort: Resort

    var body: some View {
        Group {
            Text("Elevation: \(resort.elevation)m").layoutPriority(1)
            Spacer().frame(height: 0)
            Text("Snow: \(resort.snowDepth)cm").layoutPriority(1)
        }
    }
}

struct SkiDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SkiDetailsView(resort: Resort.example)
    }
}

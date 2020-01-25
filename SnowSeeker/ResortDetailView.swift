//
//  ResortDetailView.swift
//  SnowSeeker
//
//  Created by Vincent O'Sullivan on 25/01/2020.
//  Copyright © 2020 Vincent O'Sullivan. All rights reserved.
//

import SwiftUI

struct ResortDetailView: View {

    let resort: Resort

    var body: some View {
        Text(resort.name)
    }
}

struct ResortDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ResortDetailView(resort: Resort.example)
    }
}

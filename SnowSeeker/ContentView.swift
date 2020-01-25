//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Vincent O'Sullivan on 25/01/2020.
//  Copyright © 2020 Vincent O'Sullivan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            // Primary View linked to it's companion detail view.
            NavigationLink(destination: Text("Detail View")) {
                Text("Primary View")
            }
            .navigationBarTitle("Primary")
            Text("Secondary View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

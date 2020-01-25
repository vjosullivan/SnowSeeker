//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Vincent O'Sullivan on 25/01/2020.
//  Copyright © 2020 Vincent O'Sullivan. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @Environment(\.horizontalSizeClass) var sizeClass

    var body: some View {
        Group {
            // Layout responds to size class (.compact, .regular) changes.
            if sizeClass == .compact {
                // VStack (and HStack) can take paramaterless inits as parameter
                // where the object is a View.
                VStack(content: UserView.init)
            } else {
                HStack(content: UserView.init)
            }        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

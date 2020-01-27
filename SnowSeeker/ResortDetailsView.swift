//
//  ResortDetailsView.swift
//  SnowSeeker
//
//  Created by Vincent O'Sullivan on 25/01/2020.
//  Copyright © 2020 Vincent O'Sullivan. All rights reserved.
//

import SwiftUI

struct ResortDetailsView: View {
    
    let resort: Resort

    /// Returns a word describing the resort size.
    /// Expects the resort size as a number in the range 1...3.
    private var size: String {
        switch resort.size {
        case 1:
            return "Small"
        case 2:
            return "Average"
        default:
            return "Large"
        }
    }

    /// Returns a string of $ symbols based on the resort price.
    /// Expects the resort price as a number in the range 1...5.
    private var price: String {
        String(repeating: "$", count: resort.price)
    }
    
    var body: some View {
        Group {
            Text("Size: \(size)").layoutPriority(1)
            Spacer().frame(height: 0)
            Text("Price: \(price)").layoutPriority(1)
        }
    }
}

struct ResortDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ResortDetailsView(resort: Resort.example)
    }
}

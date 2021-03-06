//
//  Resort.swift
//  SnowSeeker
//
//  Created by Vincent O'Sullivan on 25/01/2020.
//  Copyright © 2020 Vincent O'Sullivan. All rights reserved.
//

import Foundation

struct Resort: Codable, Identifiable {
    let id: String
    let name: String
    let country: String
    let description: String
    let imageCredit: String
    let price: Int
    let size: Int
    let snowDepth: Int
    let elevation: Int
    let runs: Int
    let facilities: [String]

    // MARK: - Example instances of Resort.

    static let allResorts: [Resort] = Bundle.main.decode("resorts.json")
    //static let example = allResorts[0]
    // One way of avoiding just having one example...
    static let example = allResorts.randomElement()!
}

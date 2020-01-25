//
//  ExtensionBundle.swift
//  SnowSeeker
//
//  Created by Vincent O'Sullivan on 25/01/2020.
//  Copyright © 2020 Vincent O'Sullivan. All rights reserved.
//

import Foundation

extension Bundle {

    /// A simple, general purpose JSON decoder
    /// Note: This code contains no real error handling.
    /// - Parameter filename: The name of the JSON file.
    ///
    func decode<T: Decodable>(_ filename: String) -> T {
        guard let url = self.url(forResource: filename, withExtension: nil) else {
            fatalError("Failed to locate \(filename) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(filename) from bundle.")
        }

        let decoder = JSONDecoder()

        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(filename) from bundle.")
        }

        return loaded
    }
}

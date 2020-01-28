//
//  Favourites.swift
//  SnowSeeker
//
//  Created by Vincent O'Sullivan on 27/01/2020.
//  Copyright © 2020 Vincent O'Sullivan. All rights reserved.
//

import Foundation

class Favourites: ObservableObject {

    private var likedResorts: Set<String>

    init() {
        // load our saved data

        // still here? Use an empty array
        self.likedResorts = []
    }

    /// Returns `true` if the given resort is on the "liked resorts" list,
    /// otherwise `false`.
    /// - Parameter resort: The resort whose "liked" status is being sought.
    public func contains(_ resort: Resort) -> Bool {
        return likedResorts.contains(resort.id)
    }

    /// Adds the given resort to the "liked resorts" list and informs the world
    /// of the changes.
    /// - Parameter resort: The resort to be added.
    public func add(_ resort: Resort) {
        objectWillChange.send()
        likedResorts.insert(resort.id)
        save()
    }

    /// Removes the given resort to the "liked resorts" list and informs the world
    /// of the changes.
    /// - Parameter resort: The resort to be removed.
    public func remove(_ resort: Resort) {
        objectWillChange.send()
         likedResorts.remove(resort.id)
         save()
    }

    private func save() {
        // TODO: Write the save code.
    }
}

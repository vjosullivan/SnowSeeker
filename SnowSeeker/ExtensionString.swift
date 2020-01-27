//
//  ExtensionString.swift
//  SnowSeeker
//
//  Created by Vincent O'Sullivan on 27/01/2020.
//  Copyright © 2020 Vincent O'Sullivan. All rights reserved.
//

import Foundation

extension String: Identifiable {
    public var id: String {
        return self
    }
}

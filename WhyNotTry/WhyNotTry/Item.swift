//
//  Item.swift
//  WhyNotTry
//
//  Created by W.N.R.Fernando on 2025-01-26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

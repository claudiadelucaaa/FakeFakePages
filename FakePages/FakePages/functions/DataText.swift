//
//  DataText.swift
//  FakePages
//
//  Created by Claudia De Luca on 16/11/23.
//

import Foundation
import SwiftData

@Model
class DataText: Identifiable {
    var id: String
    var editedText: String
    
    init(editedText: String) {
        self.id = UUID().uuidString
        self.editedText = editedText
    }
}


//
//  OptionMenu.swift
//  FakePages
//
//  Created by Claudia De Luca on 15/11/23.
//

import Foundation

struct OptionMenu: Identifiable {
    var id: UUID = UUID()
    var imageOM: String = ""
    var nameOM: String
    var isDestructive: Bool = false
}

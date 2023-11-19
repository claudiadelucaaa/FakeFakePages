//
//  Location.swift
//  FakePages
//
//  Created by Claudia De Luca on 15/11/23.
//

import Foundation
import SwiftUI

class BrowseViewModel {
    var locations = [
        Lista(image: "cloud", name: "iCloud Drive"),
        Lista(image: "iphone.gen2", name: "On My iPhone"),
        Lista(image: "trash", name: "Recently Deleted")
    ]
}

enum TagsEnum : String, Identifiable, CaseIterable {
    var id: Self { self }
    
    case red = "Red"
    case orange = "Orange"
    case yellow = "Yellow"
    case green = "Green"
    case blue = "Blue"
    case purple = "Purple"
    case gray = "Gray"
    
    var colors: Color {
        switch self {
        case .red: .red
        case .orange: .orange
        case .yellow: .yellow
        case .green: .green
        case .blue: .blue
        case .purple: .purple
        case .gray: .gray
        }
        
    }
}

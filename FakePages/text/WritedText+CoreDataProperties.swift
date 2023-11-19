//
//  WritedText+CoreDataProperties.swift
//  FakePages
//
//  Created by Claudia De Luca on 16/11/23.
//
//

import Foundation
import CoreData


extension WritedText {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<WritedText> {
        return NSFetchRequest<WritedText>(entityName: "WritedText")
    }

    @NSManaged public var text: String?

}

extension WritedText : Identifiable {

}

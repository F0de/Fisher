//
//  Fish+CoreDataProperties.swift
//  Fisher
//
//  Created by Влад Тимчук on 26.08.2022.
//
//

import Foundation
import CoreData


extension Fish {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Fish> {
        return NSFetchRequest<Fish>(entityName: "Fish")
    }

    @NSManaged public var number: Int32
    @NSManaged public var time: Date?
    @NSManaged public var fishingDay: FishingDay?
    
    public var wrappedTime: Date {
        time ?? Date.now
    }
}

extension Fish : Identifiable {

}

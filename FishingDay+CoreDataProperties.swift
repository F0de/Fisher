//
//  FishingDay+CoreDataProperties.swift
//  Fisher
//
//  Created by Влад Тимчук on 26.08.2022.
//
//

import Foundation
import CoreData


extension FishingDay {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FishingDay> {
        return NSFetchRequest<FishingDay>(entityName: "FishingDay")
    }

    @NSManaged public var date: Date?
    @NSManaged public var fishCount: Int32
    @NSManaged public var fish: NSSet?

    public var wrappedDate: Date {
        date ?? Date.now
    }
    
    public var fishArray: [Fish] {
        let set = fish as? Set<Fish> ?? []
        
        return set.sorted {
            $0.wrappedTime < $1.wrappedTime
        }
    }
    
}

// MARK: Generated accessors for fish
extension FishingDay {

    @objc(addFishObject:)
    @NSManaged public func addToFish(_ value: Fish)

    @objc(removeFishObject:)
    @NSManaged public func removeFromFish(_ value: Fish)

    @objc(addFish:)
    @NSManaged public func addToFish(_ values: NSSet)

    @objc(removeFish:)
    @NSManaged public func removeFromFish(_ values: NSSet)

}

extension FishingDay : Identifiable {

}

//
//  DataController.swift
//  Fisher
//
//  Created by Влад Тимчук on 22.08.2022.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "CoreDataModelFishingHistory")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
            
//            self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyStoreTrump //save only 1 version of data
        }
    }
}

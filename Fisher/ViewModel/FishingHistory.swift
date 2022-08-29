//
//  FishingHistory.swift
//  Fisher
//
//  Created by Влад Тимчук on 25.06.2022.
// ViewModel

import Foundation
import CoreData

class FishingHistory: ObservableObject {
    @Published var selectedView = 1
    @Published var showingDetail = false
    
//    @Published var savedFishingDays: [FishingDay] = []
//    @Published var savedFishes: [Fish] = []
    let container = NSPersistentContainer(name: "CoreDataModelFishingHistory")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
            
            self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyStoreTrump //save only 1 version of data
        }
    }
    
//    func fetchFishingDays() {
//        let request = NSFetchRequest<FishingDay>(entityName: "FishingDay")
//        do {
//            savedFishingDays = try container.viewContext.fetch(request)
//        } catch let error {
//            print("Error fetching fishing days. \(error)")
//        }
//    }
//
//    func fetchFishes() {
//        let request = NSFetchRequest<Fish>(entityName: "Fish")
//        do {
//            savedFishes = try container.viewContext.fetch(request)
//        } catch let error{
//            print("Error fetching fishes. \(error)")
//        }
//    }
    
//    func addFish() {
//        if savedFishingDays.isEmpty {   //  if date array empty create newDay and newFish
//            let newDay = FishingDay(context: container.viewContext)
//            newDay.fishCount += 1
//            newDay.date = Date.now
//
//            let newFish = Fish(context: container.viewContext)
//            newFish.number += 1
//            newFish.time = Date.now
//        } else {
//            if savedFishingDays[savedFishingDays.endIndex].date == Date.now {   //  if end date == now date create newFish
//                let newFish = Fish(context: container.viewContext)
//                newFish.number += 1
//                newFish.time = Date.now
//            } else {    //  else create newDay and newFish
//                let newDay = FishingDay(context: container.viewContext)
//                newDay.fishCount += 1
//                newDay.date = Date.now
//
//                let newFish = Fish(context: container.viewContext)
//                newFish.number += 1
//                newFish.time = Date.now
//            }
//        }
//        saveData()
//    }
    
    func deleteFishingDay() {
        
    }
    
    func deleteFish() {
        
    }
    
//    func saveData() {
//        do {
//            try container.viewContext.save()
//            fetchFishingDays()
//            fetchFishes()
//        } catch let error {
//            print("Error saving. \(error)")
//        }
//    }
    
//    @Published var fishes: [History.Fish] = [
//        History.Fish(number: 12, time: Date.now.formatted(date: .omitted, time: .shortened)),
//        History.Fish(number: 11, time: Date.now.formatted(date: .omitted, time: .shortened)),
//        History.Fish(number: 10, time: Date.now.formatted(date: .omitted, time: .shortened)),
//        History.Fish(number: 9, time: Date.now.formatted(date: .omitted, time: .shortened)),
//        History.Fish(number: 8, time: Date.now.formatted(date: .omitted, time: .shortened)),
//        History.Fish(number: 7, time: Date.now.formatted(date: .omitted, time: .shortened)),
//        History.Fish(number: 6, time: Date.now.formatted(date: .omitted, time: .shortened)),
//        History.Fish(number: 5, time: Date.now.formatted(date: .omitted, time: .shortened)),
//        History.Fish(number: 4, time: Date.now.formatted(date: .omitted, time: .shortened)),
//        History.Fish(number: 3, time: Date.now.formatted(date: .omitted, time: .shortened)),
//        History.Fish(number: 2, time: Date.now.formatted(date: .omitted, time: .shortened)),
//        History.Fish(number: 1, time: Date.now.formatted(date: .omitted, time: .shortened))
//    ]
//    @Published var fishingDays: [History.FishingDay] = [
//        History.FishingDay(fishCount: 12, date: Date.now.formatted(date: .long, time: .omitted)),
//        History.FishingDay(fishCount: 21, date: Date.now.formatted(date: .long, time: .omitted)),
//        History.FishingDay(fishCount: 7, date: Date.now.formatted(date: .long, time: .omitted))
//    ]
    
//    func addFishing() {
//        fishing = fishingDays
//    }
    
//    func addFish() {
        //        fishes.append()
//        fishingDays[0].fishCount += 1
//    }
//    func deleteFish() {
//        if fishingDays[0].fishCount >= 1 {
//        fishingDays[0].fishCount -= 1
//        }
//    }
}

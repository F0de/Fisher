//
//  History.swift
//  Fisher
//
//  Created by Влад Тимчук on 25.06.2022.
// Model

import Foundation

struct History {
//    private (set) var fishes: Array<Fish>
//    private (set) var fishingDays: Array<FishingDay>
    let calendar = Calendar.current
    let date = Date()
    
   //time
//    let dateComponents = DateComponents(calendar: calendar, year: 1999, month: 10, day: 13, hour: 10, minute: 10)
//    let composedDate = calendar.date(from: dateComponents)
//
//    let componentsFromCurrentDate = calendar.dateComponents([.year, .month, .day, .hour, .minute], from: date)
    
    
    
    struct FishingDay: Identifiable {
        var id = UUID()
        var fishCount: Int
        var day: Int
        var month: Int
        var year: Int
    }
    struct Fish: Identifiable {
        var id = UUID()
        var number: Int
        var hour: Int
        var minute: Int
    }
}

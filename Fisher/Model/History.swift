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
//    let calendar = Calendar.current
//    let date = Date()
    
    
    
    struct FishingDay: Identifiable {
        var id = UUID()
        var fishCount: Int
        var date: String
//        var month: String
//        var year: String
    }
    struct Fish: Identifiable {
        var id = UUID()
        var number: Int
        var hour: Int
        var minute: Int
    }
}

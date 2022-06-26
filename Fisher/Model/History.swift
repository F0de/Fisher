//
//  History.swift
//  Fisher
//
//  Created by Влад Тимчук on 25.06.2022.
// Model

import Foundation

struct History {
    private (set) var fishes: Array<Fish>
    private (set) var fishingDays: Array<FishingDay>
    
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

//
//  FishingHistory.swift
//  Fisher
//
//  Created by Влад Тимчук on 25.06.2022.
// ViewModel

import Foundation

class FishingHistory: ObservableObject {
    @Published var selectedView = 2
    @Published var showingDetail = false
    @Published var fishingDays: [History.FishingDay] = [
        History.FishingDay(fishCount: 15, day: 18, month: 6, year: 2022),
        History.FishingDay(fishCount: 21, day: 12, month: 6, year: 2022),
        History.FishingDay(fishCount: 7, day: 11, month: 5, year: 2022)
    ]
    @Published var fishes: [History.Fish] = [
        History.Fish(number: 12, hour: 13, minute: 40),
        History.Fish(number: 11, hour: 13, minute: 20),
        History.Fish(number: 10, hour: 10, minute: 43),
        History.Fish(number: 9, hour: 10, minute: 23),
        History.Fish(number: 8, hour: 10, minute: 11),
        History.Fish(number: 7, hour: 9, minute: 40),
        History.Fish(number: 6, hour: 8, minute: 23),
        History.Fish(number: 5, hour: 7, minute: 23),
        History.Fish(number: 4, hour: 6, minute: 41),
        History.Fish(number: 3, hour: 6, minute: 34),
        History.Fish(number: 2, hour: 6, minute: 18),
        History.Fish(number: 1, hour: 5, minute: 47)
    ]
    
    func addFish() {
        fishingDays[0].fishCount += 1
    }
    func deleteFish() {
        if fishingDays[0].fishCount >= 1 {
            fishingDays[0].fishCount -= 1
        }
    }
}


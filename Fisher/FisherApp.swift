//
//  FisherApp.swift
//  Fisher
//
//  Created by Влад Тимчук on 24.06.2022.
//

import SwiftUI

@main
struct FisherApp: App {
    @StateObject private var dataController = FishingHistory()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}

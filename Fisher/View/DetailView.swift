//
//  DetailView.swift
//  Fisher
//
//  Created by Влад Тимчук on 25.06.2022.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var fishingHistory = FishingHistory()
    
    var body: some View  {
            List(fishingHistory.fishes) { fish in
                FishRow(fishes: fish)
            }
            .navigationBarTitle("Fish", displayMode: .inline)
    }
}

struct FishRow: View {
    var fishes: History.Fish
    
    var body: some View {
        HStack {
            Text("\(fishes.number)")
            Spacer()
            Text("\(fishes.hour):\(fishes.minute)")
        }
    }
}
















struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
            .preferredColorScheme(.dark)
        DetailView()
            .preferredColorScheme(.light)
    }
}

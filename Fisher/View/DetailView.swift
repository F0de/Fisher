//
//  DetailView.swift
//  Fisher
//
//  Created by Влад Тимчук on 25.06.2022.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var fishingHistory = FishingHistory()
//    @State var fish = [ //remove this from here
//        Fish(number: 12, hour: 13, minute: 40),
//        Fish(number: 11, hour: 13, minute: 20),
//        Fish(number: 10, hour: 10, minute: 43),
//        Fish(number: 9, hour: 10, minute: 23),
//        Fish(number: 8, hour: 10, minute: 11),
//        Fish(number: 7, hour: 9, minute: 40),
//        Fish(number: 6, hour: 8, minute: 23),
//        Fish(number: 5, hour: 7, minute: 23),
//        Fish(number: 4, hour: 6, minute: 41),
//        Fish(number: 3, hour: 6, minute: 34),
//        Fish(number: 2, hour: 6, minute: 18),
//        Fish(number: 1, hour: 5, minute: 47)
//    ]
    
    var body: some View  {
        List(fishingHistory.fishes) { fish in
            FishRow(fishes: fish)
        }
        .navigationBarTitle("Fish", displayMode: .inline)
    }
}

struct FishRow: View {
    var fishes: History.Fish //edit in future
    
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
    }
}

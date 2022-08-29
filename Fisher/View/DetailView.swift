//
//  DetailView.swift
//  Fisher
//
//  Created by Влад Тимчук on 25.06.2022.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var vm = FishingHistory()
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var fishingDays: FetchedResults<FishingDay>
    
    var body: some View  {
        List {
            ForEach(fishingDays, id: \.self) { fishingDay in
                FishRow(fishingDays: fishingDay)
            }
        }
        .navigationBarTitle("Fish", displayMode: .inline)
    }
}

struct FishRow: View {
    var fishingDays: FishingDay

    var body: some View {
        ForEach(fishingDays.fishArray, id: \.self) { fish in
            HStack {
                Text("\(fish.number)")
                Spacer()
                Text("\((fish.time?.formatted(date: .omitted, time: .shortened))!)")
            }
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

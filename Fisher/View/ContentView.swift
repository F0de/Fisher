//
//  ContentView.swift
//  Fisher
//
//  Created by Влад Тимчук on 24.06.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm = FishingHistory()

    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var fishingDays: FetchedResults<FishingDay>
    
    var body: some View {
        TabView(selection: $vm.selectedView) {
            VStack{
                Spacer()
                ForEach(fishingDays, id: \.self) { fishingDay in
                    Text("\(fishingDay.fishCount)")
                }
                Spacer()
                VStack(spacing: 40){
                    addFish
                    deleteFish
                }
                .buttonStyle(.bordered)
                .controlSize(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .font(.system(size: 128))
            .tabItem{
                Image(systemName: "house")
                Text("Home")
            } .tag(1)
            NavigationView{
                List(fishingDays) { fishing in
                    NavigationLink(destination: DetailView()) {
                        FishingRow(fishingDays: fishing)
                    }
                }
                .navigationTitle("Fishing")
            }
            .tabItem{
                Image(systemName: "book")
                Text("History")
            } .tag(2)
        }
    }
    
    var addFish: some View {
        Button{
//            vm.addFish()
        } label: {
            Label("", systemImage: "plus")
                .frame(width: 245, height: 245)
                .foregroundColor(.green)
        }
    }
    var deleteFish: some View {
        Button{
//            vm.deleteFish()
        } label: {
            Label("", systemImage: "minus")
                .frame(width: 145, height: 145)
                .foregroundColor(.red)
        }
    }
    
}

struct FishingRow: View {
    var fishingDays: FishingDay
    
    var body: some View {
        HStack{
            Text("\(fishingDays.fishCount)")
            Spacer()
            Text("\((fishingDays.date?.formatted(date: .long, time: .omitted))!)").foregroundColor(.gray)
        }
    }
}


















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}

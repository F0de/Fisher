//
//  ContentView.swift
//  Fisher
//
//  Created by Влад Тимчук on 24.06.2022.
//

import SwiftUI

struct FishingDays: Identifiable {
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

struct FishingRow: View {
    var fishingDays: FishingDays
    
    var body: some View {
        HStack{
            Text("\(fishingDays.fishCount)")
            Spacer()
            Text("\(fishingDays.day).\(fishingDays.month)." + String(fishingDays.year)).foregroundColor(.gray)
        }
    }
}

struct FishRow: View {
    var fish: Fish
    
    var body: some View {
        HStack {
            Text("\(fish.number)")
            Spacer()
            Text("\(fish.hour):\(fish.minute)")
        }
    }
}

struct DetailView: View {
    @State var fish = [
        Fish(number: 12, hour: 13, minute: 40),
        Fish(number: 11, hour: 13, minute: 20),
        Fish(number: 10, hour: 10, minute: 43),
        Fish(number: 9, hour: 10, minute: 23),
        Fish(number: 8, hour: 10, minute: 11),
        Fish(number: 7, hour: 9, minute: 40),
        Fish(number: 6, hour: 8, minute: 23),
        Fish(number: 5, hour: 7, minute: 23),
        Fish(number: 4, hour: 6, minute: 41),
        Fish(number: 3, hour: 6, minute: 34),
        Fish(number: 2, hour: 6, minute: 18),
        Fish(number: 1, hour: 5, minute: 47)
    ]
    
    var body: some View  {
        List(fish) { fish in
            FishRow(fish: fish)
        }
        .navigationBarTitle("Fish", displayMode: .inline)
    }
}
struct ContentView: View {
    @State private var fishCount = 0
    @State private var selectedView = 2
    @State private var showingDetail = false
    @State var editMode: EditMode = .inactive
    @State private var fishingDays = [
        FishingDays(fishCount: 15, day: 18, month: 6, year: 2022),
        FishingDays(fishCount: 21, day: 12, month: 6, year: 2022),
        FishingDays(fishCount: 7, day: 11, month: 5, year: 2022)
    ]
    
    var body: some View {
        TabView(selection: $selectedView) {
            VStack{
                Spacer()
                Text("\(fishCount)")
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
                List(fishingDays) { fishingDays in
                    NavigationLink(destination: DetailView()) {
                        FishingRow(fishingDays: fishingDays)
                    }
                }
                .navigationBarTitle("Fishing")
            }
            .tabItem{
                Image(systemName: "book")
                Text("History")
            } .tag(2)
        }
    }
    
    var addFish: some View {
        Button{
            fishCount += 1
        } label: {
            Label("", systemImage: "plus")
                .frame(width: 245, height: 245)
                .foregroundColor(.green)
        }
    }
    var deleteFish: some View {
        Button{
            if fishCount >= 1 {
                fishCount -= 1
            }
        } label: {
            Label("", systemImage: "minus")
                .frame(width: 145, height: 145)
                .foregroundColor(.red)
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

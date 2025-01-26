//
//  ContentView.swift
//  WhyNotTry
//
//  Created by W.N.R.Fernando on 2025-01-26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    // Define an String array : here no need to mention the array data type -> Swift : type safe
    

    var data : [String] = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing","Cricket", "Curling", "Fencing", "Golf","Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink,.purple, .red]
    
    @State var selected = "Archery" // this value can change so need to update the value according to the selected value , so mark using a property wrapper (@State)
    
    var intValue = 1
    
    var body: some View {
        VStack {
            Text("Why not try...")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Circle()
                .fill(colors.randomElement() ?? .blue)
                .overlay {
                    Image(systemName:"figure.\(selected.lowercased())")
                        .font(.system(size: 144))
                        .foregroundColor(.white)
                }
            
            Text("\(selected)!")
                .font(.title)
            
            //Button(<#T##title: StringProtocol##StringProtocol#>, action: <#T##() -> Void#>)
            
            // instead of using the above button creation way, we can use the below way.
            Button("Try Again") {
                //print("Tapped try again button")
                
                // picking random elemernt from the data array
                var random = data.randomElement()
                
                // unwrap the null value to non-nullable value
                // For that can use four ways
                
                // 1. we acan use if let
                
//                if let unwrappedRandom = random {
//                    selected = unwrappedRandom
//                } else {
//                    selected = "Null"
//                }
                
                
                // 2. can use guard let
                
//                guard let unwrapped_random_2 = random else {return}
//                selected =  unwrapped_random_2
                
                
                // 3. force unwrap -> we can ignore the null exception and just assign the random -> not recommnended
                //selected = random!
                
                // 4. assign random value to selected by checking null or not
                // here if the "random" is not null assign that value to the var selected if not go with the default value
                
               selected = random ?? "archery"
            }
            .buttonStyle(.borderedProminent)
            
        }.padding()
    }
}

#Preview {
    ContentView()
}

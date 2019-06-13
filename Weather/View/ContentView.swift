//
//  ContentView.swift
//  Weather
//
//  Created by Bobby Conti on 6/10/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView : View {
    @State var networkManager = NetworkManager()
    
    var body: some View {
        VStack {
            Text("Temp: \(networkManager.currentWeather.temperature)")
            Text("Humidity: \(networkManager.currentWeather.humidity)")
            Text("Precip: \(networkManager.currentWeather.precipProbability)")
            Text("Summary: \(networkManager.currentWeather.summary)")
            Image(networkManager.currentWeather.icon)
            ForEach(networkManager.dailyWeather.data.identified(by: \.day)) {
                Text("\($0.temperatureHigh)")
            }
        }.background(Color.black).colorScheme(.dark)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

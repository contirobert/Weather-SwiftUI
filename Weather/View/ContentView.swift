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
            Text("Temp: \(networkManager.weather.currently.temperature)")
            Text("Humidity: \(networkManager.weather.currently.humidity)")
            Text("Precip: \(networkManager.weather.currently.precipProbability)")
            Text("Summary: \(networkManager.weather.currently.summary)")
            Image(networkManager.weather.currently.icon)
            ForEach(networkManager.weather.daily.data.identified(by: \.time)) {
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

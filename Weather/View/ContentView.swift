//
//  ContentView.swift
//  Weather
//
//  Created by Bobby Conti on 6/10/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                HeaderView(data: networkManager.currentWeather)
                
                Spacer()
                
                CurrentWeatherView(data: networkManager.currentWeather)
                    .padding([.leading, .trailing])
                
                Spacer()
                
                DailyWeatherView(data: networkManager.dailyWeather)
                
                FooterView()
            }
        }.colorScheme(.dark)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

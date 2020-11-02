//
//  NetworkManager.swift
//  Weather
//
//  Created by Bobby Conti on 6/12/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import SwiftUI
import Combine

class NetworkManager: ObservableObject {
    
    @Published var currentWeather = CurrentWeatherViewModel()
    
    @Published var dailyWeather = DailyWeatherViewModel()
    
    let client = DarkSkyAPIClient()
    
    init() {
        client.getWeather(at: .newYorkCity) { weather, error in
            if let weather = weather {
                self.currentWeather = CurrentWeatherViewModel(model: weather.currently)
                self.dailyWeather = DailyWeatherViewModel(model: weather.daily)
            }
        }
    }
}

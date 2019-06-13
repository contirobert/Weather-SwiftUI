//
//  CurrentWeatherViewModel.swift
//  WeatherApp
//
//  Created by Bobby Conti on 4/23/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import Foundation

struct CurrentWeatherViewModel {
    let temperature: String
    let humidity: String
    let precipProbability: String
    let summary: String
    let icon: String
    
    init() {
        self.temperature = "0"
        self.humidity = "0%"
        self.precipProbability = "0%"
        self.summary = "Data Unavailable"
        self.icon = "default"
    }
    
    init(model: CurrentWeather) {
        let roundedTemperature = Int(model.temperature)
        self.temperature = "\(roundedTemperature)º"
        
        let humidityPercentValue = Int(model.humidity * 100)
        self.humidity = "\(humidityPercentValue)%"
        
        let precipPercentValue = Int(model.precipProbability * 100)
        self.precipProbability = "\(precipPercentValue)%"
        
        self.summary = model.summary
        self.icon = model.icon
    }
}

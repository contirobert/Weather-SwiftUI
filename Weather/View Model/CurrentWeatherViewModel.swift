//
//  CurrentWeatherViewModel.swift
//  WeatherApp
//
//  Created by Bobby Conti on 4/23/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import Foundation

struct CurrentWeatherViewModel {
    let time: String
    let summary: String
    let icon: String
    let precipProbability: String
    let temperature: String
    let apparentTemperature: String
    let humidity: String
    let windSpeed: String
    
    init() {
        self.time = "--"
        self.summary = "Data Unavailable"
        self.icon = "default"
        self.precipProbability = "--"
        self.temperature = "--"
        self.apparentTemperature = "--"
        self.humidity = "--"
        self.windSpeed = "--"
    }
    
    init(model: CurrentWeather) {
        let today = Date(timeIntervalSince1970: model.time)
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMMM d"
        self.time = formatter.string(from: today)

        self.summary = model.summary
        
        self.icon = model.icon
        
        let precipPercentValue = Int(model.precipProbability * 100)
        self.precipProbability = "\(precipPercentValue)%"
        
        let roundedTemperature = Int(model.temperature)
        self.temperature = "\(roundedTemperature)º"
        
        let roundedApparentTemp = Int(model.apparentTemperature)
        self.apparentTemperature = "\(roundedApparentTemp)º"
        
        let humidityPercentValue = Int(model.humidity * 100)
        self.humidity = "\(humidityPercentValue)%"
        
        let roundedWindSpeed = Int(model.windSpeed)
        self.windSpeed = "\(roundedWindSpeed) mph"
    }
}

//
//  DailyWeatherViewModel.swift
//  Weather
//
//  Created by Bobby Conti on 6/10/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import Foundation

struct DailyWeatherViewModel {
    let day: String
    let temperatureHigh: String
    let temperatureLow: String
    let icon: String
    
    init(model: DailyWeather) {
        let date = Date(timeIntervalSince1970: model.time)
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        self.day = formatter.string(from: date)
        
        let roundedHighTemperature = Int(model.temperatureHigh)
        self.temperatureHigh = "\(roundedHighTemperature)º"
        
        let roundedLowTemperature = Int(model.temperatureLow)
        self.temperatureLow = "\(roundedLowTemperature)º"
        
        self.icon = model.icon
    }
}

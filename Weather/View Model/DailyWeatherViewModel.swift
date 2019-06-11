//
//  DailyWeatherViewModel.swift
//  Weather
//
//  Created by Bobby Conti on 6/10/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import Foundation

struct DailyWeatherViewModel {
    var data: [Data]
    
    struct Data {
        var day: String
        var temperatureHigh: String
        var temperatureLow: String
        var icon: String
    }
    
    init(model: DailyWeather) {
        self.data = [Data]()
        
        for index in 0..<model.data.count {
            let date = Date(timeIntervalSince1970: model.data[index].time)
            let formatter = DateFormatter()
            formatter.dateFormat = "EEEE"
            self.data[index].day = formatter.string(from: date)
            
            let roundedHighTemperature = Int(model.data[index].temperatureHigh)
            self.data[index].temperatureHigh = "\(roundedHighTemperature)º"
            
            let roundedLowTemperature = Int(model.data[index].temperatureLow)
            self.data[index].temperatureLow = "\(roundedLowTemperature)º"
            
            self.data[index].icon = model.data[index].icon
        }
    }
}

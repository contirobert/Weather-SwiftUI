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
    
    init() {
        self.data = [Data]()
    }
    
    init(model: DailyWeather) {
        self.init()
        
        for index in 0..<model.data.count {
            let date = Date(timeIntervalSince1970: model.data[index].time)
            let formatter = DateFormatter()
            formatter.dateFormat = "EEEE"
            let formattedDay = formatter.string(from: date)
            
            let roundedHighTemperature = Int(model.data[index].temperatureHigh)
            let formattedTemperatureHigh = "\(roundedHighTemperature)º"
            
            let roundedLowTemperature = Int(model.data[index].temperatureLow)
            let formattedTemperatureLow = "\(roundedLowTemperature)º"
            
            let formattedIcon = model.data[index].icon
            
            self.data.append(Data(day: formattedDay, temperatureHigh: formattedTemperatureHigh, temperatureLow: formattedTemperatureLow, icon: formattedIcon))
        }
    }
}

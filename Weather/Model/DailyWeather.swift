//
//  DailyWeather.swift
//  Weather
//
//  Created by Bobby Conti on 6/10/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import Foundation

struct DailyWeather: Codable {
    let data: [Data]
    
    struct Data: Codable {
        var time: Double
        var temperatureHigh: Double
        var temperatureLow: Double
        var icon: String
    }
}

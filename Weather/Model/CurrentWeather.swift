//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Bobby Conti on 4/23/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import Foundation

struct CurrentWeather: Codable {
    let temperature: Double
    let humidity: Double
    let precipProbability: Double
    let summary: String
    let icon: String
    
    init() {
        self.temperature = 0
        self.humidity = 0
        self.precipProbability = 0
        self.summary = "Data Unavailable"
        self.icon = "default"
    }
}

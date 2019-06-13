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
        let time: Double
        let temperatureHigh: Double
        let temperatureLow: Double
        let icon: String
    }
    
    init() {
        self.data = [Data]()
    }
}

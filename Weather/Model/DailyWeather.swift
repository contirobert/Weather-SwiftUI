//
//  DailyWeather.swift
//  Weather
//
//  Created by Bobby Conti on 6/10/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import Foundation

struct DailyWeather: Codable {
    let time: Int
    let temperatureHigh: Double
    let temperatureLow: Double
    let icon: String
}

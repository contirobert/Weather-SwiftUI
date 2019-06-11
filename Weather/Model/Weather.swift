//
//  Weather.swift
//  WeatherApp
//
//  Created by Bobby Conti on 4/23/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import Foundation

struct Weather: Codable {
    let currently: CurrentWeather
    let daily: DailyWeather
}

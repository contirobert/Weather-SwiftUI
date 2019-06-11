//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Bobby Conti on 4/23/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeather: Codable {
    let temperature: Double
    let humidity: Double
    let precipProbability: Double
    let summary: String
    let icon: String
}

extension CurrentWeather {
    var iconImage: UIImage {
        switch icon {
        case "clear-day": return #imageLiteral(resourceName: "clear-day")
        case "clear-night": return #imageLiteral(resourceName: "clear-night")
        case "rain": return #imageLiteral(resourceName: "rain")
        case "snow": return #imageLiteral(resourceName: "snow")
        case "sleet": return #imageLiteral(resourceName: "sleet")
        case "wind": return #imageLiteral(resourceName: "wind")
        case "fog": return #imageLiteral(resourceName: "fog")
        case "cloudy": return #imageLiteral(resourceName: "cloudy")
        case "partly-cloudy-day": return #imageLiteral(resourceName: "partly-cloudy-day")
        case "partly-cloudy-night": return #imageLiteral(resourceName: "partly-cloudy-night")
        default: return #imageLiteral(resourceName: "default")
        }
    }
}

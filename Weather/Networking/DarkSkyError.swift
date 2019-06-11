//
//  DarkSkyError.swift
//  WeatherApp
//
//  Created by Bobby Conti on 4/23/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import Foundation

enum DarkSkyError: Error {
    case requestFailed
    case responseUnsuccessful(statusCode: Int)
    case invalidData
    case jsonParsingFailure
    case invalidURL
}

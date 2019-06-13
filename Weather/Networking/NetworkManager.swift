//
//  NetworkManager.swift
//  Weather
//
//  Created by Bobby Conti on 6/12/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import SwiftUI
import Combine

class NetworkManager: BindableObject {
    var didChange = PassthroughSubject<NetworkManager, Never>()
    
    var weather = Weather() {
        didSet {
            didChange.send(self)
        }
    }
    
    let client = DarkSkyAPIClient()
    
    init() {
        client.getWeather(at: .newYorkCity) { weather, error in
            if let weather = weather {
                self.weather = weather
            }
        }
    }
}

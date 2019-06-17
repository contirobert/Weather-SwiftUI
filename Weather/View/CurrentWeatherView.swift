//
//  CurrentWeatherView.swift
//  Weather
//
//  Created by Bobby Conti on 6/10/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import SwiftUI

struct CurrentWeatherView: View {
    let data: CurrentWeatherViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(data.icon)
                    .resizable()
                    .frame(width: 40, height: 40)
                
                Text(data.summary)
                    .font(.title)
                    .fontWeight(.light)
                }.padding(0)
            
            HStack {
                Text(data.temperature)
                    .font(.system(size: 150))
                    .fontWeight(.ultraLight)
                
                VStack(alignment: .leading) {
                    Text("Humidity: \(data.humidity)")
                    Text("Precip: \(data.precipProbability)")
                }
                }.padding(0)
        }
    }
}

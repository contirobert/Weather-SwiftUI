//
//  DailyWeatherView.swift
//  Weather
//
//  Created by Bobby Conti on 6/10/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import SwiftUI

struct DailyWeatherRow: View {
    let data: DailyWeatherViewModel.Data
    
    var body: some View {
        ZStack {
            Image(data.icon)
                .resizable()
                .aspectRatio(UIImage(named: data.icon)!.size, contentMode: .fit)
                .frame(width: 50, height: 25)
            
            HStack {
                Text(data.day)
                Spacer()
                Text(data.temperatureHigh).padding(8)
                Text(data.temperatureLow).color(.gray)
                }.padding([.leading, .trailing])
        }
    }
}

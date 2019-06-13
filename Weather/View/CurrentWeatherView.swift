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
        VStack {
            Text("New York City").font(.title)
            Text(data.summary)
            Image(data.icon)
                .resizable()
                .aspectRatio(UIImage(named: data.icon)!.size, contentMode: .fit)
                .frame(width: 100, height: 100)
            Text(data.temperature).font(.system(size: 100))
        }
    }
}

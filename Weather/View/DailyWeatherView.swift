//
//  DailyWeatherView.swift
//  Weather
//
//  Created by Bobby Conti on 6/10/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import SwiftUI

struct DailyWeatherView: View {
    let data: DailyWeatherViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("5-Day Forecast")
                    .foregroundColor(.gray)
                
                Spacer()
                }.padding(.leading)
            
            Divider()
                .padding([.leading, .trailing])
            
            ForEach(data.data, id: \.day) { data in
                ZStack {
                    HStack {
                        Text(data.day)
                        Spacer()
                        Text(data.temperatureHigh).padding(8)
                        Text(data.temperatureLow).foregroundColor(.gray)
                    }.padding([.leading, .trailing])
                    
                    Image(data.icon)
                        .resizable()
                        .aspectRatio(UIImage(named: data.icon)!.size, contentMode: .fit)
                        .frame(width: 50, height: 25)
                }
            }
        }
    }
}

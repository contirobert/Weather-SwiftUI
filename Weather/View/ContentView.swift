//
//  ContentView.swift
//  Weather
//
//  Created by Bobby Conti on 6/10/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//


import SwiftUI
import Combine

struct ContentView : View {
    @State var networkManager = NetworkManager()
    
    var body: some View {
        VStack {
            CurrentWeatherView(data: networkManager.currentWeather)
                .padding(.top, 60)
            
            Spacer()
            
            VStack(alignment: .leading) {
                ForEach(networkManager.dailyWeather.data.identified(by: \.day)) { data in
                    DailyWeatherRow(data: data)
                }
            }
            
            Spacer()
            
            Image("DarkSkyLogo")
                .resizable()
                .aspectRatio(UIImage(named: "DarkSkyLogo")!.size, contentMode: .fit)
                .frame(width: 120, height: 50)
        }.background(Color.blue).colorScheme(.dark)
        .edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

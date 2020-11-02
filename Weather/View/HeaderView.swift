//
//  HeaderView.swift
//  Weather
//
//  Created by Bobby Conti on 6/17/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    let data: CurrentWeatherViewModel

    var body: some View {
        VStack {
            Text("NEW YORK CITY").font(.title).fontWeight(.light)
            Text(data.time).foregroundColor(.gray)
        }
    }
}

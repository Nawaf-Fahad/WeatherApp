//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Nawaf Alotaibi on 03/07/2022.
//

import SwiftUI
import CoreLocationUI
struct WelcomeView: View {
    @EnvironmentObject var locationManager:LocationManager
    var body: some View {
        VStack{
            VStack(spacing:20){
                Text("Welcome to weather App")
                    .bold().font(.title)
                
                Text("Please shere your current location to get the weather in your area")
                    .padding()
                
            }
            .multilineTextAlignment(.center)
            .padding()
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
            }
            .cornerRadius(35)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth:.infinity , maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

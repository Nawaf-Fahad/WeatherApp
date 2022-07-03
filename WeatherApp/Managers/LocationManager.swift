//
//  LocationManager.swift
//  WeatherApp
//
//  Created by Nawaf Alotaibi on 03/07/2022.
//

import Foundation
import CoreLocation


class LocationManager :NSObject,ObservableObject,CLLocationManagerDelegate{
    let manager = CLLocationManager()
    
    @Published var location:CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    func requestLocation(){
        isLoading = true
        manager.requestLocation()
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = true
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("There is some Location Error" , error)
        isLoading = false
    }
}

//
//  LocationService.swift
//  spalahbook
//
//  Created by Michael on 7/25/18.
//  Copyright © 2018 Mission Edition. All rights reserved.
//

import CoreLocation

class LocationService {
    private let manager = CLLocationManager()
    
    func authorize() {
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
}

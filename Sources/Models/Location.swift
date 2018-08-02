//
//  Location.swift
//  spalahbook
//
//  Created by Michael on 7/26/18.
//  Copyright © 2018 Mission Edition. All rights reserved.
//

import CoreLocation

struct Location: Decodable {
    let lat: Float
    let lng: Float
    let description: String
    let date: Float
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: CLLocationDegrees(lat), longitude: CLLocationDegrees(lng))
    }
    
    var annotation: UserAnnotation {
        return UserAnnotation(coordinate: coordinate)
    }
}

//
//  MapView.swift
//  spalahbook
//
//  Created by Michael on 7/31/18.
//  Copyright © 2018 Mission Edition. All rights reserved.
//

import MapKit

extension MKMapView {
    var isUserLocated: Bool {
        let coordinate = userLocation.coordinate
        return coordinate.latitude != 0 || coordinate.longitude != 0
    }
}

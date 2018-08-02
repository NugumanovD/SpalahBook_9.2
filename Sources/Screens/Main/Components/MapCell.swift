//
//  MapCell.swift
//  spalahbook
//
//  Created by Michael on 7/31/18.
//  Copyright © 2018 Mission Edition. All rights reserved.
//

import UIKit
import MapKit

class MapCell: UITableViewCell {
    enum Style {
        static let span = MKCoordinateSpanMake(0.01, 0.01)
    }
    
    @IBOutlet private var dateLabel: UILabel!
    @IBOutlet private var coordinateLabel: UILabel!
    @IBOutlet private var mapView: MKMapView!
    @IBOutlet private var descriptionLabel: UILabel!
    
    func configure(with location: Location, formatter: DateFormatter) {
        let date = Date(timeIntervalSince1970: TimeInterval(location.date))
        dateLabel.text = formatter.string(from: date)
        
        coordinateLabel.text = "\(location.lat), \(location.lng)"
        descriptionLabel.text = location.description
        
        let region = MKCoordinateRegionMake(location.coordinate, Style.span)
        mapView.setRegion(region, animated: false)
        
        mapView.addAnnotation(location.annotation)
    }
}

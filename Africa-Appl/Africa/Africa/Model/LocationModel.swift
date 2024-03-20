//
//  LocationModel.swift
//  Africa
//
//  Created by mert palas on 20.03.2024.
//

import Foundation
import MapKit

struct nationalParkLocation: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    // Computed Property
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
}

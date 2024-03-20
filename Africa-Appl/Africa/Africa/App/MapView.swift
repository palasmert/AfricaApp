//
//  MapView.swift
//  Africa
//
//  Created by mert palas on 6.03.2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK: - PROP
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [nationalParkLocation] = Bundle.main
        .decode("locations.json")
    
    //MARK: - BODY
    var body: some View {
        //MARK: - NO1 BASIC MAP
        // Map(coordinateRegion: $region
        
        //MARK:- NO2 ADVANCED MAP
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {
            item in
            //(A) PIN: OLD STYLE (always static)
            // MapPin(coordinate: item.location,tint: .accentColor)
            
            //(B) MARKER: NEW STYLE (always static)
            //MapMarker(coordinate: item.location, tint: .accentColor)
            
            // (C) CUSTOM BASIC ANNOTATION (it could be interactive)
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32,height: 32,alignment: .center)
            }//ANNOTATON
            
        })
    }
}

#Preview {
    MapView()
}

//
//  ViewController.swift
//  ios_Maps
//
//  Created by Sandeep Jangra on 2020-01-09.
//  Copyright © 2020 Sandeep. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
      //define latitude and longitude
        let latitude: CLLocationDegrees = 43.64
        let longitude: CLLocationDegrees = -79.38
        // define deltas
        let latDelta: CLLocationDegrees = 0.05
        let longDelta: CLLocationDegrees = 0.05
        
        //Define span
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        //Define Location
        let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        //Define region
        let region = MKCoordinateRegion(center: location, span: span)
        
        // set the region on the map
        mapView.setRegion(region, animated: true)
        
        
        // adding annotation for the map
        let annotation = MKPointAnnotation()
        annotation.title = "Toronto City"
        annotation.subtitle = "Supne"
        annotation.coordinate = location
        mapView.addAnnotation(annotation)
    }


}


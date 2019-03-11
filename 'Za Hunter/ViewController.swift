//
//  ViewController.swift
//  'Za Hunter
//
//  Created by Arnav Parikh on 3/11/19.
//  Copyright © 2019 Arnav Parikh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true 
    }


}


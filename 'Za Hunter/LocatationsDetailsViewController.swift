//
//  LocatationsDetailsViewController.swift
//  'Za Hunter
//
//  Created by Arnav Parikh on 3/12/19.
//  Copyright © 2019 Arnav Parikh. All rights reserved.
//

import UIKit
import MapKit

class LocatationsDetailsViewController: UIViewController {
    var selectedMapItem = MKMapItem()
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedMapItem.name!)
  
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameLabel.text = selectedMapItem.placemark.name
        var address = selectedMapItem.placemark.subThoroughfare! + " "
        address += selectedMapItem.placemark.thoroughfare! + "\n"
        address += selectedMapItem.placemark.locality! + ", "
        address += selectedMapItem.placemark.administrativeArea! + " "
        address += selectedMapItem.placemark.postalCode!
        addressLabel.text = address
        phoneLabel.text = selectedMapItem.phoneNumber
    }


}

//
//  ViewController.swift
//  Hola Mundo
//
//  Created by g913 DIT UPM on 21/10/2019.
//  Copyright © 2019 g913 DIT UPM. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var seg: UISegmentedControl!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        seg.sendActions(for: .valueChanged)
        slider.sendActions(for: .valueChanged)
        
    }

    @IBAction func updateCibeles(_ sender: UIButton) {
        msgLabel.text = "Cibeles"
        
        let center = CLLocationCoordinate2D(latitude: 40.4192500, longitude: -3.6932700)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(reg, animated: true)
    }
    
    @IBAction func updateTeleco(_ sender: UIButton) {
        msgLabel.text = "Teleco"
        
        let center = CLLocationCoordinate2D(latitude: 40.452445, longitude: -3.726162)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(reg, animated: true)
    }
    
    @IBAction func updateWanda(_ sender: UIButton) {
        msgLabel.text = "Wanda"
        
        let center = CLLocationCoordinate2D(latitude: 40.436111, longitude: -3.599444)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(reg, animated: true)
    }
    
    @IBAction func updateSeg(_ sender: UISegmentedControl) {
        if seg.selectedSegmentIndex == 0 {
            mapView.mapType = MKMapType.hybrid
        }
        else if seg.selectedSegmentIndex == 1 {
            mapView.mapType = MKMapType.standard
        }
        else if seg.selectedSegmentIndex == 2 {
            mapView.mapType = MKMapType.satellite
        }
    }
    
    @IBAction func updateSlider(_ sender: UISlider) {
        msgLabel.alpha = CGFloat(sender.value)
    }
}


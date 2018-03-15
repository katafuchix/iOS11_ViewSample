//
//  MapItemViewController.swift
//  View
//
//

import UIKit
import MapKit

class MapItemViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // ルートの始点を指定 JR吉祥寺駅
        let fromCoor : CLLocationCoordinate2D = CLLocationCoordinate2DMake(35.702278,139.544889)
        
        let fromPlacemark : MKPlacemark = MKPlacemark(coordinate: fromCoor, addressDictionary: nil)
        
        let fromItem : MKMapItem = MKMapItem(placemark: fromPlacemark)
        
        
        // ルートの終点を指定 井の頭公園
        let toCoor : CLLocationCoordinate2D = CLLocationCoordinate2DMake(35.703056,139.58) //35.712652777778, 139.51613055556)
        let toPlacemark : MKPlacemark = MKPlacemark(coordinate: toCoor, addressDictionary: nil)
        let toItem : MKMapItem = MKMapItem(placemark: toPlacemark)
        
        let options = [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeTransit]
        
        MKMapItem.openMaps(with: [fromItem, toItem], launchOptions: options)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

//
//  MapRegionViewController.swift
//  View
//
//

import UIKit
import MapKit

class MapRegionViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    var region : MKCoordinateRegion?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 中心の緯度経度
        let location = CLLocationCoordinate2D(
            latitude: 35.710139,
            longitude: 139.810833
        )
        // 地図の上端の緯度と下端の緯度の差
        // 地図の左端の経度と右端の経度の差
        let span = MKCoordinateSpanMake(0.2, 0.2)
        // 範囲を定義
        let region = MKCoordinateRegion(center: location, span: span)
        
        // 範囲を指定して地図を表示
        mapView.setRegion(region, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

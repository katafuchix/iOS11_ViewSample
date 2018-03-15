//
//  Spot.swift
//  View
//
//

import UIKit
import MapKit

// MKAnnotationプロトコルを実装
class Spot: NSObject,MKAnnotation {
   
    var coordinate: CLLocationCoordinate2D
    var title: String? = ""
    var subtitle: String? = ""
    
    // 初期化処理
    init(title: String, subtitle : String, coordinate: CLLocationCoordinate2D){
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
}

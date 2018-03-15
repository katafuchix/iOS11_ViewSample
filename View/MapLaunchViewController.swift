//
//  MapLaunchViewController.swift
//  View
//

import UIKit
import MapKit

class MapLaunchViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    var spot : Spot?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // 中心の緯度経度
        let location = CLLocationCoordinate2D(
            latitude: 35.714697,
            longitude: 139.796777
        )
        // 地図の上端の緯度と下端の緯度の差
        // 地図の左端の経度と右端の経度の差
        let span = MKCoordinateSpanMake(0.2, 0.2)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        // 範囲を指定
        mapView.setRegion(region, animated: true)
        
        // MKAnnotationプロトコルを実装したクラスをコール
        self.spot = Spot(title: "浅草寺", subtitle: "", coordinate: location)
        // ピンを立てる
        mapView.addAnnotation(self.spot!)
        // ピンにフォーカス
        mapView.selectAnnotation(self.spot!, animated: true)
    }

    @IBAction func onGo(_ sender: Any) {
        // 浅草寺の位置情報を指定してMKPlacemarkオブジェクトを生成
        let placemark = MKPlacemark(coordinate:(self.spot?.coordinate)!)
        
        // MKMapItemオブジェクトを生成
        let mapItem = MKMapItem(placemark: placemark)
        
        // 移動手段に交通機関を指定
        let launchOptions = [
                MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeTransit,
                MKLaunchOptionsMapTypeKey: MKMapType.standard.rawValue
            ] as [String : Any]
        // 経路情報を伴って地図アプリを起動
        mapItem.openInMaps(launchOptions: launchOptions)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

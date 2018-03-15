//
//  MapDirectionViewController.swift
//  View
//
//

import UIKit
import MapKit

class MapDirectionViewController: UIViewController { 

    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        mapView.delegate = self
        mapView.isZoomEnabled = true
        
        // 中心の緯度経度
        let location = CLLocationCoordinate2D(
            latitude: 35.703056,
            longitude: 139.58
        )
        // 地図の上端の緯度と下端の緯度の差
        // 地図の左端の経度と右端の経度の差
        let span = MKCoordinateSpanMake(0.005, 0.005)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        // 範囲を指定
        mapView.setRegion(region, animated: true)
        
        // ルートの始点を指定 JR吉祥寺駅
        let fromCoor : CLLocationCoordinate2D = CLLocationCoordinate2DMake(35.703056,139.58)
        
        let fromPlacemark : MKPlacemark = MKPlacemark(coordinate: fromCoor, addressDictionary: nil)
        
        let fromItem : MKMapItem = MKMapItem(placemark: fromPlacemark)
        
        
        // ルートの終点を指定 井の頭公園
        let toCoor : CLLocationCoordinate2D = CLLocationCoordinate2DMake(35.700833, 139.574167)
        let toPlacemark : MKPlacemark = MKPlacemark(coordinate: toCoor, addressDictionary: nil)
        let toItem : MKMapItem = MKMapItem(placemark: toPlacemark)
        
        // リクエストを生成
        let req : MKDirectionsRequest = MKDirectionsRequest()
        req.source = fromItem
        req.destination = toItem
        req.requestsAlternateRoutes = true
        
        // MKDirectionsオブジェクトを生成
        let directions : MKDirections = MKDirections(request: req)
        // リクエストを送信
        directions.calculate(completionHandler: {(res: MKDirectionsResponse?, error: Error?) in
            if error != nil { print(error ?? "") }
            
            // ルートを取得
            let route : MKRoute = res!.routes[0]
            // 線形オーバーレイとして地図上に表示
            self.mapView.add(route.polyline)
        })
        
        let rightBtn : UIBarButtonItem = UIBarButtonItem(title: "Clear", style: UIBarButtonItemStyle.plain, target: self, action: #selector(self.clerOverlays(_:)))
        self.navigationItem.rightBarButtonItem = rightBtn
    }
    
    @objc func clerOverlays(_ sender:Any) {
        self.mapView.removeOverlays(self.mapView.overlays)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension MapDirectionViewController: MKMapViewDelegate {
    // オーバーレイを表示
    func mapView(_ mapView: MKMapView,
                 rendererFor overlay: MKOverlay) -> MKOverlayRenderer{
        
        // 線形オーバーレイを描画
        let renderer : MKPolylineRenderer = MKPolylineRenderer(overlay: overlay)
        renderer.lineWidth = 2.0
        renderer.strokeColor = UIColor.red
        return renderer
    }
}


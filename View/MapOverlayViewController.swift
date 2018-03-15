//
//  MapOverlayViewController.swift
//  View
//
//

import UIKit
import MapKit

class MapOverlayViewController: UIViewController {

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
        
        // 35.703056, 139.58を中心に半径100mの円形オーバーレイを定義
        let clocation : CLLocationCoordinate2D = CLLocationCoordinate2DMake(35.703056, 139.58)
        let circleOverlay : MKCircle = MKCircle(center: clocation, radius: 100)
        
        // 地図にセット
        mapView.add(circleOverlay)
        
        // オーバーレイを削除するボタン
        let rightBtn : UIBarButtonItem = UIBarButtonItem(title: "Clear", style: UIBarButtonItemStyle.plain, target: self, action: #selector(self.clerOverlays(_:)))
        self.navigationItem.rightBarButtonItem = rightBtn
    }
    
    @objc func clerOverlays(_ sender:Any) {
        // 地図上のオーバーレイをすべて削除
        self.mapView.removeOverlays(self.mapView.overlays)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension MapOverlayViewController: MKMapViewDelegate {
    // オーバーレイを表示
    func mapView(_ mapView: MKMapView,
                 rendererFor overlay: MKOverlay) -> MKOverlayRenderer{
        
        // 円形オーバーレイ描画オブジェクトを生成
        let renderer : MKCircleRenderer = MKCircleRenderer(circle: overlay as! MKCircle)
        // 縁、色を青、透明度を0.3で描画
        renderer.lineWidth = 1
        renderer.strokeColor = UIColor.blue
        renderer.fillColor = UIColor.blue
        renderer.alpha = 0.3
        return renderer
    }
}


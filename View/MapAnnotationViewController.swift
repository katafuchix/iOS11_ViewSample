//
//  MapAnnotationViewController.swift
//  View
//
//

import UIKit
import MapKit

class MapAnnotationViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
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
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        // 範囲を指定
        mapView.setRegion(region, animated: true)
        
        // MKAnnotationプロトコルを実装したクラスをコール
        let spot : Spot = Spot(title: "東京スカイツリー", subtitle: "世界一の電波塔", coordinate: location)
        // ピンを立てる
        mapView.addAnnotation(spot)
        // ピンにフォーカス
        mapView.selectAnnotation(spot, animated: true)
        mapView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension MapAnnotationViewController: MKMapViewDelegate {
    // 読み込み開始時
    func mapViewWillStartLoadingMap(_ mapView: MKMapView){
        // インジケーターを表示
        activityIndicator.startAnimating()
    }
    
    // 読み込み終了時
    func mapViewDidFinishLoadingMap(_ mapView: MKMapView){
        // インジケーターを停止して非表示
        activityIndicator.stopAnimating()
        activityIndicator.isHidden = true
    }
    
    // エラー発生時
    func mapViewDidFailLoadingMap(_ mapView: MKMapView,
                                  withError error: Error){
        print(error)
    }
}

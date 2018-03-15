//
//  MapViewController.swift
//  View
//
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    var controller : MapTypeTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        mapView.delegate = self
        // 現在位置を表示
        mapView.showsUserLocation = true
        mapView.isZoomEnabled = true
        
        mapView.showsCompass = true
        mapView.showsScale = true
        
        // 中心の緯度経度
        let location = CLLocationCoordinate2D(
            //latitude: 35.703056,
            //longitude: 139.58
            latitude: 35.681111,
            longitude: 139.766667
        )
        // 地図の上端の緯度と下端の緯度の差
        // 地図の左端の経度と右端の経度の差
        let span = MKCoordinateSpanMake(0.005, 0.005)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        // 範囲を指定
        mapView.setRegion(region, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 地図の種類をメニューで選択
    @IBAction func onType(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Map", bundle: nil)
        self.controller = storyboard.instantiateViewController(withIdentifier: "MapTypeTableViewController") as? MapTypeTableViewController
        
        // ポップオーバーで表示
        self.controller?.modalPresentationStyle = UIModalPresentationStyle.popover
        self.controller?.preferredContentSize = CGSize(width: 300, height: 220)
        
        // ポップオーバーの詳細を指定
        // ビューコントローラーの上に表示
        self.controller?.popoverPresentationController?.sourceView = self.view
        // アンカーの向き
        self.controller?.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection.any
        
        // デリゲートを指定
        self.controller?.popoverPresentationController?.delegate = self
        self.controller?.delegate = self
        
        // 表示
        present(self.controller!, animated: true, completion: nil)
    }
    
    // カメラの指定
    func setMapCamera() {
        mapView.camera.pitch = 40.0     // 傾斜
        mapView.camera.heading = 100    // 高さ(m)
    }
    
}

// MKMapViewDelegateを実装
extension MapViewController: MKMapViewDelegate {
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

extension MapViewController: UIPopoverPresentationControllerDelegate {
    // 動作時の表示形式を指定
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none
    }
    
    // 終了時の処理を指定
    func popoverPresentationControllerDidDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) {
        // ポップオーバーとして表示するビューコントローラーをクリア
        self.controller = nil
    }
    
}

// ポップアップメニューからの選択後の処理
extension MapViewController: mapTypeDelegate {
    
    // 選択したテーブルの行に応じて地図の種類を変更
    func didSelect(_ row: Int) {
        // 0 標準の地図
        // 1 航空写真
        // 2 標準の地図と航空写真
        // 3 航空写真の3D
        // 4 航空写真の3Dと標準の地図
        self.mapView.mapType = MKMapType(rawValue: UInt(row))!
        
        // 3Dの地図ではカメラをセット
        if row == 3 || row == 4 {
            self.setMapCamera()
        }
    }
}

//
//  MapCameraViewController.swift
//  View
//
//

import UIKit
import MapKit

class MapCameraViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 地図の中心の地点
        let center : CLLocationCoordinate2D = CLLocationCoordinate2DMake(
            35.681111, 139.766667 )
        
        // 仮想カメラを設置する地点
        let viewPoint : CLLocationCoordinate2D = CLLocationCoordinate2DMake(
            35.681111, 139.777667 )
        
        // ビルを見せる
        mapView.showsBuildings = true
        // 拡大縮小を可能に
        mapView.isPitchEnabled = true
        
        // 500m上空から地図を見下ろすようにMKMapCameraオブジェクトを生成
        let camera : MKMapCamera = MKMapCamera(lookingAtCenter: center, fromEyeCoordinate: viewPoint, eyeAltitude: 500)
            
            // MKMapCamera(lookingAtCenterCoordinate: center, fromEyeCoordinate: viewPoint, eyeAltitude: 500)
        
        // 仮想カメラをセット
        mapView.camera = camera
        self.navigationController?.isNavigationBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

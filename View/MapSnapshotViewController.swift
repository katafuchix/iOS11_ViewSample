//
//  MapSnapshotViewController.swift
//  View
//
//

import UIKit
import MapKit

class MapSnapshotViewController: UIViewController//, IImagePickerControllerDelegate {
{

    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 地図の中心の地点 汐留
        let center : CLLocationCoordinate2D = CLLocationCoordinate2DMake(
            35.662778, 139.759847 )
        
        // カメラをセットする地点 浜離宮恩賜庭園
        let viewPoint : CLLocationCoordinate2D = CLLocationCoordinate2DMake(
            35.66, 139.763611 )
        
        // ビルを見せる
        mapView.showsBuildings = true
        // 拡大縮小を可能に
        mapView.isPitchEnabled = true
        
        // 500m上空から地図を見下ろすようにMKMapCameraオブジェクトを生成
        let camera : MKMapCamera = MKMapCamera(lookingAtCenter: center, fromEyeCoordinate: viewPoint, eyeAltitude: 500)
        
        // 仮想カメラをセット
        mapView.camera = camera
    }

    @IBAction func saveSnapShot(_ sender: Any) {
        // オプションを指定
        let op : MKMapSnapshotOptions = MKMapSnapshotOptions()
        op.size = mapView.bounds.size
        op.scale = UIScreen.main.scale
        op.camera = mapView.camera
        op.mapType = MKMapType.standard
        
        // 地図のスナップショットを撮影
        let snapShotter : MKMapSnapshotter = MKMapSnapshotter(options:op)
        snapShotter.start(completionHandler: {
            (snapshot : MKMapSnapshot?, error : Error?) in
            if error != nil {
                print(error ?? "")
                return
            }
            // カメラロールに保存
            UIImageWriteToSavedPhotosAlbum(snapshot!.image, self, #selector(self.image(_:didFinishSavingWithError:contextInfo:)), nil)
            })
    }
    
    // 画像保存時のセレクタ
    @objc func image(_ image: UIImage, didFinishSavingWithError error: NSError!, contextInfo: UnsafeMutableRawPointer) {
        
        var message : String?
        if (error==nil) {
            message = "保存しました"
        } else {
            message = "保存に失敗しました"
        }
        // 処理の完了時にはアラートを出す
        let alert:UIAlertController = UIAlertController(title: message, message: "", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {
            // OKボタンが押された時の処理
            (action:UIAlertAction) -> Void in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

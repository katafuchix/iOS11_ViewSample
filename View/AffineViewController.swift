//
//  AffineViewController.swift
//  View
//
//

import UIKit

class AffineViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // 45度回転
    @IBAction func _rotate(_ sender: Any) {
        imageView.transform = CGAffineTransform(rotationAngle: CGFloat(45.0 * (Double.pi / 180.0)))
        //CGAffineTransform(rotationAngle: CGFloat(45.0 * (Double.pi / 180.0)))
    }
    
    // 1.5倍に拡大
    @IBAction func _scale(_ sender: Any) {
        imageView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
    }
    
    // x, y 方向に50移動
    @IBAction func _move(_ sender: Any) {
        imageView.transform = CGAffineTransform(translationX: 50.0, y: 50.0)
    }
    
    // マトリクスを適応
    @IBAction func _matrix(_ sender: Any) {
        //imageView.transform = CGAffineTransformMake(1, 0, 0, -1, 0, imageView.bounds.size.height)
        
         imageView.transform = CGAffineTransform(a: 1, b: 0, c: 0, d: -1, tx: 0, ty: imageView.bounds.size.height)
    }
    
    // 適応前の状態に戻す
    @IBAction func _reset(_ sender: Any) {
        imageView.transform = CGAffineTransform.identity
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

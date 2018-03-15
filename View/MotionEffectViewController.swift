//
//  MotionEffectViewController.swift
//  View
//
//

import UIKit

class MotionEffectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let viewA : UIView = UIView(frame: CGRect(x:0, y:0, width:60, height:60))
        viewA.backgroundColor = UIColor.gray
        viewA.center = self.view.center
        
        // 水平方向のモーションエフェクトを生成
        let xMotion = UIInterpolatingMotionEffect(keyPath: "center.x", type: UIInterpolatingMotionEffectType.tiltAlongHorizontalAxis)
        // 左右の動きの幅を指定
        xMotion.minimumRelativeValue = -100.0
        xMotion.maximumRelativeValue = 100.0
        
        // 垂直方向のモーションエフェクトを生成
        let yMotion = UIInterpolatingMotionEffect(keyPath: "center.y", type: UIInterpolatingMotionEffectType.tiltAlongVerticalAxis)
        // 上下の動きの幅を指定
        yMotion.minimumRelativeValue = -100.0
        yMotion.maximumRelativeValue = 100.0
        
        // モーションエフェクトを指定
        viewA.motionEffects = [xMotion, yMotion]
        self.view.addSubview(viewA)
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

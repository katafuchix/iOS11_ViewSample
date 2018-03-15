//
//  AnimationViewController.swift
//  View
//
//

import UIKit

class AnimationViewController: UIViewController {

    var viewA : UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        viewA = UIView(frame: CGRect(x:60, y:100, width:60, height:80))
        viewA!.backgroundColor = UIColor.gray
        
        self.view.addSubview(viewA!)
        
    }
    // ボタン押下時の処理
    @IBAction func start(_ sender: Any) {
        
        // アニメーションを開始
        UIView.animate(
            // 1秒待って開始、3秒かけて最初はゆるやかに最後は一定の動きに
            withDuration: 3,
            delay: 1,
            options: UIViewAnimationOptions.curveEaseIn,
            animations: {
              // ビューの位置、サイズの拡大、背景色の変更、透明度の変化を指定する
              self.viewA?.backgroundColor = UIColor.blue
              self.viewA?.frame = CGRect(x:200.0, y:300.0, width:70.0, height:70.0)
            }, completion: {
                // 完了時の処理
                (finished: Bool) in
                // 背景を黒に
                self.viewA?.backgroundColor = UIColor.black
            }
        )
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

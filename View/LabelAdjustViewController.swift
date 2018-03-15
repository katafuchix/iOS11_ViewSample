//
//  LabelAdjustViewController.swift
//  View
//
//

import UIKit

class LabelAdjustViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // ラベルをそのまま表示
        let label1 : UILabel  = UILabel(frame: CGRect(x:40, y:100, width:160, height:25))
        label1.backgroundColor = UIColor.gray
        label1.font = UIFont(name: "Arial Rounded MT Bold", size: 24.0)
        label1.text = "ABCDEFGHIJKLMNO"
        
        self.view.addSubview(label1)
        
        // フォントサイズの自動調整、縮小倍率の最小値を指定して表示
        let label2 : UILabel  = UILabel(frame: CGRect(x:40, y:140, width:160, height:25))
        label2.backgroundColor = UIColor.gray
        label2.font = UIFont(name: "Arial Rounded MT Bold", size: 24.0)
        label2.adjustsFontSizeToFitWidth = true
        label2.minimumScaleFactor = 0.1
        label2.text = "ABCDEFGHIJKLMNO"
        
        self.view.addSubview(label2)
        
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

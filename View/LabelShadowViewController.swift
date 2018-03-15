//
//  LabelShadowViewController.swift
//  View
//
//

import UIKit

class LabelShadowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // UILabelオブジェクトを生成
        let label : UILabel  = UILabel(frame: CGRect(x:40, y:100, width:160, height:60))
        label.textColor = UIColor.blue
        label.backgroundColor = UIColor.clear
        label.baselineAdjustment = UIBaselineAdjustment.alignBaselines
        // フォント、サイズを指定
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 40.0)
        // 文字列を指定
        label.text = "sample"
        // 影の色を指定
        label.shadowColor = UIColor.gray
        // 影のずれ具合を指定
        label.shadowOffset = CGSize(width:3.0, height:3.0)
        self.view.addSubview(label)
        
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

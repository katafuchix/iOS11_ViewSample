//
//  LabelBaseViewController.swift
//  View
//
//

import UIKit

class LabelBaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        let label1 : UILabel  = UILabel(frame: CGRect(x:40, y:100, width:160, height:60))
        label1.backgroundColor = UIColor.gray
        label1.textAlignment = NSTextAlignment.left
        label1.font = UIFont(name: "Arial Rounded MT Bold", size: 24.0)
        label1.text = " Baseline Adjustment "
        self.view.addSubview(label1)
        
        let label2 : UILabel  = UILabel(frame: CGRect(x:40, y:180, width:160, height:60))
        label2.backgroundColor = UIColor.gray
        label2.textAlignment = NSTextAlignment.left
        label2.adjustsFontSizeToFitWidth = true
        label2.baselineAdjustment = UIBaselineAdjustment.alignBaselines
        label2.numberOfLines = 1
        label2.font = UIFont(name: "Arial Rounded MT Bold", size: 24.0)
        label2.text = " Baseline Adjustment "
        self.view.addSubview(label2)
        
        let label3 : UILabel  = UILabel(frame: CGRect(x:40, y:260, width:160, height:60))
        label3.backgroundColor = UIColor.gray
        label3.textAlignment = NSTextAlignment.left
        label3.adjustsFontSizeToFitWidth = true
        label3.baselineAdjustment = UIBaselineAdjustment.alignCenters
        label3.numberOfLines = 1
        label3.font = UIFont(name: "Arial Rounded MT Bold", size: 24.0)
        label3.text = " Baseline Adjustment "
        self.view.addSubview(label3)
        
        let label4 : UILabel  = UILabel(frame: CGRect(x:40, y:340, width:160, height:60))
        label4.backgroundColor = UIColor.gray
        label4.textAlignment = NSTextAlignment.left
        label4.adjustsFontSizeToFitWidth = true
        label4.baselineAdjustment = UIBaselineAdjustment.none
        label4.numberOfLines = 1
        label4.font = UIFont(name: "Arial Rounded MT Bold", size: 24.0)
        label4.text = " Baseline Adjustment "
        self.view.addSubview(label4)
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

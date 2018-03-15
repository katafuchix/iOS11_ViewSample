//
//  RadiusViewController.swift
//  View
//
//

import UIKit

class RadiusViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 外観を変えるためのUIViewオブジェクト
        let viewR : UIView = UIView(frame: CGRect(x:0, y:0, width:160, height:120))
        viewR.backgroundColor = UIColor.gray
        viewR.center = CGPoint(x:self.view.bounds.width/2, y:150)
        
        // 四隅を丸くして角丸に
        viewR.layer.cornerRadius = 10
        self.view.addSubview(viewR)
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

//
//  LabelAlignmentViewController.swift
//  View
//
//

import UIKit

class LabelAlignmentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let label1 : UILabel  = UILabel(frame: CGRect(x:20, y:100, width:self.view.bounds.size.width-40, height:25))
        label1.backgroundColor = UIColor.gray
        label1.font = UIFont(name: "Arial Rounded MT Bold", size: 20.0)
        label1.textAlignment = NSTextAlignment.left
        label1.text = "Text Alignment"
        self.view.addSubview(label1)
        
        let label2 : UILabel  = UILabel(frame: CGRect(x:20, y:140, width:self.view.bounds.size.width-40, height:25))
        label2.backgroundColor = UIColor.gray
        label2.font = UIFont(name: "Arial Rounded MT Bold", size: 20.0)
        label2.textAlignment = NSTextAlignment.center
        label2.text = "Text Alignment"
        self.view.addSubview(label2)
        
        let label3 : UILabel  = UILabel(frame: CGRect(x:20, y:180, width:self.view.bounds.size.width-40, height:25))
        label3.backgroundColor = UIColor.gray
        label3.font = UIFont(name: "Arial Rounded MT Bold", size: 20.0)
        label3.textAlignment = NSTextAlignment.right
        label3.text = "Text Alignment"
        self.view.addSubview(label3)
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

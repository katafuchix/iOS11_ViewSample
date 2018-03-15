//
//  LabelLineViewController.swift
//  View
//
//

import UIKit

class LabelLineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // 文字列の最初で切り捨て
        let label1 : UILabel  = UILabel(frame: CGRect(x:40, y:80, width:160, height:25))
        label1.backgroundColor = UIColor.gray
        label1.font = UIFont(name: "Arial Rounded MT Bold", size: 24.0)
        label1.lineBreakMode = NSLineBreakMode.byTruncatingHead
        label1.text = "Line Break Mode"
        self.view.addSubview(label1)
        
        // 改行できない場合、可能な限り表示
        let label2 : UILabel  = UILabel(frame: CGRect(x:40, y:120, width:160, height:25))
        label2.backgroundColor = UIColor.gray
        label2.font = UIFont(name: "Arial Rounded MT Bold", size: 24.0)
        label2.lineBreakMode = NSLineBreakMode.byTruncatingTail
        label2.text = "Line Break Mode"
        self.view.addSubview(label2)
        
        let label3 : UILabel  = UILabel(frame: CGRect(x:40, y:160, width:160, height:25))
        label3.backgroundColor = UIColor.gray
        label3.font = UIFont(name: "Arial Rounded MT Bold", size: 24.0)
        label3.lineBreakMode = NSLineBreakMode.byTruncatingMiddle
        label3.text = "Line Break Mode"
        self.view.addSubview(label3)
        
        let label4 : UILabel  = UILabel(frame: CGRect(x:40, y:220, width:260, height:80))
        label4.backgroundColor = UIColor.gray
        label4.font = UIFont(name: "Arial Rounded MT Bold", size: 12.0)
        label4.lineBreakMode = NSLineBreakMode.byWordWrapping
        label4.text = "iPhone（アイフォーン）は、アップル社製の\nスマートフォンである。オリジナルのモデルは2007年1月に発表され、最新モデルのiPhone 6/6 Plusは2014年9月19日に発売された"
        label4.numberOfLines = 0
        self.view.addSubview(label4)
        
        let label5 : UILabel  = UILabel(frame: CGRect(x:40, y:320, width:260, height:80))
        label5.backgroundColor = UIColor.gray
        label5.font = UIFont(name: "Arial Rounded MT Bold", size: 12.0)
        label5.lineBreakMode = NSLineBreakMode.byCharWrapping
        label5.text = "iPhone（アイフォーン）は、アップル社製の\nスマートフォンである。オリジナルのモデルは2007年1月に発表され、最新モデルのiPhone 6/6 Plusは2014年9月19日に発売された"
        label5.numberOfLines = 0
        self.view.addSubview(label5)
    
        let label6 : UILabel  = UILabel(frame: CGRect(x:40, y:420, width:260, height:50))
        label6.backgroundColor = UIColor.gray
        label6.font = UIFont(name: "Arial Rounded MT Bold", size: 12.0)
        label6.lineBreakMode = NSLineBreakMode.byClipping
        label6.text = "iPhone（アイフォーン）は、アップル社製の\nスマートフォンである。オリジナルのモデルは2007年1月に発表され、最新モデルのiPhone 6/6 Plusは2014年9月19日に発売された"
        label6.numberOfLines = 0
        self.view.addSubview(label6)
        
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

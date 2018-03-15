//
//  BackgroundViewController.swift
//  View
//
//

import UIKit

class BackgroundViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let viewA : UIView = UIView(frame: CGRect(x:40, y:100, width:50, height:50))
        // 背景色をグレーに
        viewA.backgroundColor = UIColor.gray
        // 透明度を0.5に る viewA.alpha = 0.5
        self.view.addSubview(viewA)
        
        
        let viewB : UIView = UIView(frame: CGRect(x:140, y:100, width:50, height:50))
        // 背景色をRGBαで指定
        viewB.backgroundColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 0.8)
        self.view.addSubview(viewB)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

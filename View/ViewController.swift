//
//  ViewController.swift
//  View
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // (40,140)の位置から横幅60、縦幅80のビューを生成
        let viewA : UIView = UIView(frame: CGRect(x:40, y:140, width:60, height:80))
        // 背景色の指定
        viewA.backgroundColor = UIColor.gray
        // 画面に配置
        self.view.addSubview(viewA)
        
        
        let viewB : UIView = UIView(frame: CGRect(x:0, y:0, width:50, height:50))
        viewB.backgroundColor = UIColor.black
        // 中心の位置を指定
        viewB.center = CGPoint(x:self.view.bounds.size.width/2, y:150)
        self.view.addSubview(viewB)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


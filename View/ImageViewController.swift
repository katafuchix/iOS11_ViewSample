//
//  ImageViewController.swift
//  View
//
//

import UIKit

class ImageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // 画像を指定して初期化
        let imageView : UIImageView = UIImageView(image: UIImage(named: "sample"))
        imageView.frame = CGRect(x:60, y:150, width:200, height:150)
        self.view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

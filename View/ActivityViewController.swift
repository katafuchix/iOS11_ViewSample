//
//  ActivityViewController.swift
//  View
//
//

import UIKit

class ActivityViewController: UIViewController {

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // スタイルを指定
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.whiteLarge
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.white
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        
        activityIndicator.color = UIColor.gray
        
        // 停止した場合に非表示にする
        activityIndicator.hidesWhenStopped = true
        // 起動
        activityIndicator.startAnimating()
    }

    
    @IBAction func onStart(_ sender: Any) {
        // 停止している場合に開始
        if !activityIndicator.isAnimating {
            activityIndicator.startAnimating()
        }
    }
    
    
    @IBAction func onStop(_ sender: Any) {
        // 起動している場合に停止
        if activityIndicator.isAnimating {
            activityIndicator.stopAnimating()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

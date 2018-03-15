//
//  ProgressViewController.swift
//  View
//
//

import UIKit

class ProgressViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var startBtn: UIButton!
    
    var time : Float = 0.0
    weak var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // プログレスバーのスタイルと初期値を設定
        //progressView.progressViewStyle = UIProgressViewStyle.Bar
        progressView.progressViewStyle = UIProgressViewStyle.default
        progressView.progress = 0
        label.text = ""
    }
    
    @IBAction func startProgres(_ sender: Any) {
        //初期値を0に
        progressView.progress = 0
        // 0.1秒のインターバルでprogress:メソッドを実行
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector:#selector(ProgressViewController.progress), userInfo: nil, repeats: true)
    }
    
    @objc func progress() {
        
        time += 0.005
        if time >= 1.00 { timer!.invalidate() }
        
        // プログレスバーに加算
        progressView.setProgress(time, animated: true)
        
        // ラベルの表示を更新
        label.text = "\(round(time * 100.0))%"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

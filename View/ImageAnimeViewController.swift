//
//  ImageAnimeViewController.swift
//  View
//
//

import UIKit

class ImageAnimeViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 最初の画像
        imageView.image = UIImage(named: "0")
        
        // 0.png〜9.pngの画像をアニメーションのコマに
        var imgArray = [UIImage]()
        imgArray += [ UIImage(named: "0")!,
            UIImage(named: "1")!,
            UIImage(named: "2")!,
            UIImage(named: "3")!,
            UIImage(named: "4")!,
            UIImage(named: "5")!,
            UIImage(named: "6")!,
            UIImage(named: "7")!,
            UIImage(named: "8")!,
            UIImage(named: "9")!
        ]
        
        imageView.animationImages = imgArray
        // コマが切り替わる時間を1秒
        imageView.animationDuration = 1.0
        // リピート回数を0回
        imageView.animationRepeatCount = 0
    
    }
    
    
    @IBAction func start(_ sender: Any) {
        // 停止している場合に開始
        if !imageView.isAnimating {
            imageView.startAnimating()
        }
    
    }
    
    
    @IBAction func stop(_ sender: Any) {
          // 開始している場合に停止
        if imageView.isAnimating {
            imageView.stopAnimating()
        }
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

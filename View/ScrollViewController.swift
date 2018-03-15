//
//  ScrollViewController.swift
//  View
//
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // コンテンツのサイズを指定
        scrollView.contentSize = CGSize(width:640.0, height:600.0)
        scrollView.isScrollEnabled = true
        // スタイルを指定
        scrollView.indicatorStyle = UIScrollViewIndicatorStyle.black
        // 最大倍率は10倍
        scrollView.maximumZoomScale = 10.0
        // 最小倍率は1/3倍
        scrollView.minimumZoomScale = 0.33333
        // デリゲートを指定
        scrollView.delegate = self
        // ページングさせない
        scrollView.isPagingEnabled = false
        // スクロールの終端でバウンドさせる
        scrollView.bounces = true
        // 鉾方向スクロールバーの表示
        scrollView.showsHorizontalScrollIndicator = true
        // 立て方向スクロールバーの表示
        scrollView.showsVerticalScrollIndicator = true
        // 最上部タップでスクロールを戻す
        scrollView.scrollsToTop = true
        // 初回表示は1/3倍で
        scrollView.zoomScale = 0.33333
        
        let imageView : UIImageView = UIImageView(image : UIImage(named: "scroll"))
        
        // スクロール内に画像を配置
        scrollView.addSubview(imageView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ScrollViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView){
        print("スクロール中")
    }
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView){
        print("スクロール中")
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView,
                                  willDecelerate decelerate: Bool){
        print("スクロール終了")
    }
}

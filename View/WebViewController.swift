//
//  WebViewController.swift
//  View
//
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // リクエスト先のURLを指定してNSURLRequestオブジェクトを生成
        let url : URL = URL(string: "http://www.apple.co.jp")!
        let request : URLRequest = URLRequest(url: url)
        
        // 拡大縮小を可能に
        webView.scalesPageToFit = true
        // スクロールビューにアクセス スクロールさせない 
        webView.scrollView.isScrollEnabled = false
        // デリゲートを指定
        webView.delegate = self
        // HTTPリクエストの送信
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func back(_ sender: Any) {
        // 前画面に戻れる場合は戻る
        if webView.canGoBack { webView.goBack() }
    }
    
    
    @IBAction func forward(_ sender: Any) {
        // 次画面に進める場合は進む
        if webView.canGoForward { webView.goForward() }
    }
    
    
    @IBAction func reload(_ sender: Any) {
        // 読み込み中でなければ更新
        if webView.isLoading { webView.reload() }
    }
    
    
    @IBAction func stop(_ sender: Any) {
        // 読み込み中であれば読み込みを停止 
        if webView.isLoading { webView.stopLoading() }
    }
}

extension WebViewController: UIWebViewDelegate {
    // 読み込み開始時にネットワークインジケーターを表示
    func webViewDidStartLoad(_ webView: UIWebView){
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    // 読み込み終了時にネットワークインジケーターを非表示
    func webViewDidFinishLoad(_ webView: UIWebView){
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    // リクエスト時にリクエストの種類とURLを取得
    func webView(_ webView: UIWebView,
                 shouldStartLoadWithshouldStartLoadWith request: URLRequest,
        navigationType: UIWebViewNavigationType) -> Bool{
        print(navigationType)
        
        // URLをNSString型で取得
        let requestString : String! = request.url?.absoluteString
        print(requestString)
        
        return true
    }
}

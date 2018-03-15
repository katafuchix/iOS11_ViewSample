//
//  TextViewController.swift
//  View
//
//

import UIKit

class TextViewController: UIViewController {

    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        textView.text = "iOSとは、Apple社が提供するiPhone／iPad／iPod touchに搭載されているオペレーションシステム（OS）です。マルチタッチディスプレイを利用した入力形式に最適化されており、軽快な動作が大きな特徴です。\niOSにインストールできるアプリケーションのことをiOSアプリといいます。iOSアプリは、Appleが運営するAppStoreというiOSアプリのダウンロードサービスからインストールできます。\niOSアプリは、Appleが開発ツールやドキュメントを開発者向けに公開しているため、誰でも開発し、Appleの審査を経てAppStoreで配布できます。\niOSの先進的な機能を利用できるというメリットのほか、開発者が自由にiOSアプリを開発できること、さらにAppStoreでiOSアプリを有料で販売できることから、個人の開発者だけでなく、企業からもビジネスの面でiOSアプリの開発が注目されています。"
        
        // フォントとサイズを指定
        textView.font = UIFont(name: "Arial", size: 12.0)
        // 文字列の色を指定
        textView.textColor = UIColor.black
        // 文字列を左揃えに
        textView.textAlignment = NSTextAlignment.left
        
        textView.keyboardType = UIKeyboardType.numbersAndPunctuation
        
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

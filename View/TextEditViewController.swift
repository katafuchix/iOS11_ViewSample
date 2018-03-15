//
//  TextEditViewController.swift
//  View
//
//

import UIKit

class TextEditViewController: UIViewController {

    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        textView.text = "iOSとは、Apple社が提供するiPhone／iPad／iPod touchに搭載されているオペレーションシステム（OS）です。マルチタッチディスプレイを利用した入力形式に最適化されており、軽快な動作が大きな特徴です。\niOSにインストールできるアプリケーションのことをiOSアプリといいます。iOSアプリは、Appleが運営するAppStoreというiOSアプリのダウンロードサービスからインストールできます。\niOSアプリは、Appleが開発ツールやドキュメントを開発者向けに公開しているため、誰でも開発し、Appleの審査を経てAppStoreで配布できます。\niOSの先進的な機能を利用できるというメリットのほか、開発者が自由にiOSアプリを開発できること、さらにAppStoreでiOSアプリを有料で販売できることから、個人の開発者だけでなく、企業からもビジネスの面でiOSアプリの開発が注目されています。"
        textView.isEditable = true
        textView.keyboardType = UIKeyboardType.numbersAndPunctuation
        textView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension TextEditViewController: UITextViewDelegate {

    func textViewDidBeginEditing(_ textView: UITextView){
        print("編集を開始しました")
    }
    
    func textViewDidEndEditing(_ textView: UITextView){
        print("編集を終了しました")
    }
    
}

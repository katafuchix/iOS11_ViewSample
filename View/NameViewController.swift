//
//  NameViewController.swift
//  View
//
//

import UIKit

class NameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        // nibファイルの内容を取得してインスタンスを生成
        let object : NameCard  = Bundle.main.loadNibNamed("NameCard", owner: nil, options: nil)![0] as! NameCard
        
        // プロパティに対して値を指定
        object.nameImage.image = UIImage(named: "cat1")
        object.nameLabel.text = "むく"
        object.nameText.text = "よろしくね！"
        
        // 画面に追加
        object.center = self.view.center
        self.view.addSubview(object)

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

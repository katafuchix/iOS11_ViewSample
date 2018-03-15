//
//  CollectionViewController.swift
//  View
//
//

import UIKit

let reuseIdentifier = "Cell"

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var items    = [String]()
    var collectionView : UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0 ..< 50 {
            items.append(String(i))
        }
        
        self.view.backgroundColor = UIColor.black
        
        // レイアウトを指定
        let flowLayout : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        // セルのサイズ
        flowLayout.itemSize = CGSize(width:50.0, height:50.0)
        // 縦、横のスペース
        flowLayout.minimumInteritemSpacing = 10.0
        flowLayout.minimumLineSpacing = 12.0
        // スクロールの方向
        flowLayout.scrollDirection = UICollectionViewScrollDirection.vertical
        // サイズ、レイアウトを指定して初期化
        collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: flowLayout)
        // delegateを指定
        collectionView!.delegate = self
        // dataSourceを指定
        collectionView!.dataSource = self
        // セルのクラスを登録
        collectionView!.register(ItemCell.classForCoder(), forCellWithReuseIdentifier: reuseIdentifier)
        
        // 画面に表示
        self.view.addSubview(collectionView!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath)
        
        cell.backgroundColor = UIColor.white
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 2
        return cell
    }

    // MARK: UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath){
            // 選択されたセルの番号を表示
        let alert:UIAlertController = UIAlertController(title: "\(indexPath.row)", message: "", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {
                // OKボタンが押された時の処理
                (action:UIAlertAction) -> Void in
            alert.dismiss(animated: true, completion: nil)
            }))
            
        self.present(alert, animated: true, completion: nil)
    }
}

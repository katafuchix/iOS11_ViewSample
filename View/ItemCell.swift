//
//  ItemCell.swift
//  View
//
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    
    override func draw(_ rect: CGRect) {
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.borderWidth = 5.0
        
        // セルの背景色を白に指定
        self.backgroundColor = UIColor.white
        
        // 選択時に表示するビューを指定
        self.selectedBackgroundView = UIView(frame: self.bounds)
        self.selectedBackgroundView!.backgroundColor = UIColor.red
    }
}

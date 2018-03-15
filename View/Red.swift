//
//  Red.swift
//  View
//
//

import UIKit

class Red: UIView {

    override func draw(_ rect: CGRect)
    {
        // 描画領域を取得
        let context = UIGraphicsGetCurrentContext()!
        // 描画領域を赤で塗りつぶす
        context.setFillColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        context.fill(CGRect(x:0, y:0, width:self.frame.size.width, height:self.frame.size.height))
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(rect: CGRect) {
        // Drawing code
    }
    */

}

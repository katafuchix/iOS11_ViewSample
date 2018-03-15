//
//  AutoResizeViewController.swift
//  View
//
//

import UIKit

class AutoResizeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {


    var parentView : UIView?
    var childView : UIView?
    
    var picker : UIPickerView?
    var items : Array<String>?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        parentView = UIView(frame: CGRect(x: 0, y:60, width:160, height:160 ))
        parentView!.backgroundColor = UIColor.black
        self.view.addSubview(parentView!)
        
        // 子要素となるラベルをひとつ追加
        childView = UIView(frame: parentView!.bounds.insetBy(dx: 30, dy: 30))
        childView!.backgroundColor = UIColor.orange
        parentView!.addSubview(childView!)
        
        picker = UIPickerView()
        picker!.delegate = self
        picker!.showsSelectionIndicator = true
        picker!.frame = CGRect(x:0,y:260,width:self.view.bounds.size.width,height:120)
        self.view.addSubview(picker!)
        
        // ピッカーのタイトルを配列で定義
        items = ["UIViewAutoresizing.none",
                    "UIViewAutoresizing.flexibleLeftMargin",
                    "UIViewAutoresizing.flexibleWidth",
                    "UIViewAutoresizing.flexibleRightMargin",
                    "UIViewAutoresizing.flexibleTopMargin",
                    "UIViewAutoresizing.flexibleHeight",
                    "UIViewAutoresizing.flexibleBottomMargin"]
        
        
        let button : UIButton = UIButton(type: UIButtonType.system)
        button.frame = CGRect(x:0, y:0, width:150, height:30)
        button.center = self.view.center
        button.center.y = 440
        button.backgroundColor = UIColor.gray
        button.setTitle("Button", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(AutoResizeViewController.onPush(_:)), for:.touchUpInside)
        self.view.addSubview(button)
    }

    // ボタン押下時の処理
    @objc func onPush(_ sender: UIButton){
        if ( parentView!.frame.size.width == 160 ) {
            parentView!.frame = CGRect(x: 0, y:60, width:200, height:200 )
        } else {
            parentView!.frame = CGRect(x: 0, y:60, width:160, height:160 )
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items!.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items![row] as String
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView{
        
        var label = view as? UILabel
        
        if label == nil {
            label = UILabel(frame:CGRect(x:0.0, y:0.0, width:pickerView.rowSize(forComponent: component).width, height:pickerView.rowSize(forComponent: component).height))
            
        }
        
        label!.text = items![row] as String
        label!.font = UIFont(name: "Arial Rounded MT Bold", size: 16.0)
        label!.backgroundColor = UIColor.clear
        label!.textAlignment = NSTextAlignment.center
        return label!
    }
    
    // ピッカー選択時にautoresizingMaskプロパティの値を変更
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(row)
        switch(row){
        case 1:
            childView!.autoresizingMask = .flexibleLeftMargin
        case 2:
            childView!.autoresizingMask = .flexibleWidth
        case 3:
            childView!.autoresizingMask = .flexibleRightMargin
        case 4:
            childView!.autoresizingMask = .flexibleTopMargin
        case 5:
            childView!.autoresizingMask = .flexibleHeight
        case 6:
            childView!.autoresizingMask = .flexibleBottomMargin
        default:
            break
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

//
//  ContentModeViewController.swift
//  View
//
//

import UIKit

class ContentModeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var imageView : UIImageView?
    var picker : UIPickerView?
    var items : Array<String>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        imageView = UIImageView(image: UIImage(named: "sample.jpg"))
        imageView!.frame = CGRect(x: 0, y: 60, width: 320, height: 240 )
        imageView!.contentMode = UIViewContentMode.scaleToFill
        imageView!.contentMode = UIViewContentMode.scaleAspectFit
        imageView!.contentMode = UIViewContentMode.bottomLeft
        imageView!.contentMode = UIViewContentMode.center
        self.view.addSubview(imageView!)
        
        
        picker = UIPickerView()
        picker!.delegate = self
        picker!.showsSelectionIndicator = true
        picker!.frame = CGRect(x:0, y:320, width:self.view.bounds.size.width, height:120)
        self.view.addSubview(picker!)
        
        items = ["UIViewContentMode.scaleToFill",
                    "UIViewContentMode.scaleAspectFit",
                    "UIViewContentMode.scaleAspectFill",
                    "UIViewContentMode.redraw",
                    "UIViewContentMode.center",
                    "UIViewContentMode.top",
                    "UIViewContentMode.bottom",
                    "UIViewContentMode.left",
                    "UIViewContentMode.right",
                    "UIViewContentMode.topLeft",
                    "UIViewContentMode.topRight",
                    "UIViewContentMode.bottomLeft",
                    "UIViewContentMode.bottomRight"]
        
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items!.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,forComponent component: Int) -> String? {
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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        imageView!.contentMode = UIViewContentMode(rawValue: row)!
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

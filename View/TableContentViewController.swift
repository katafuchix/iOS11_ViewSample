//
//  TableContentViewController.swift
//  View
//
//

import UIKit

class TableContentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    var deviceArray: Array<String> = Array<String>()
    var dateArray: Array<String> = Array<String>()
    var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        deviceArray = ["iPhone 3G",
                        "iPhone 3GS",
                        "iPhone 4",
                        "iPhone 4S",
                        "iPhone 5"]
        
        dateArray = ["2008年7月11日",
                        "2009年6月19日",
                        "2010年6月24日",
                        "2011年10月14日",
                        "2012年9月21日"]
        
        tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.plain)
        tableView!.delegate = self
        tableView!.dataSource = self
        tableView!.rowHeight = 80.0
        self.view.addSubview(tableView!)
        
        //self.navigationController?.isNavigationBarHidden = true
    }
    /*
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    */
    // セクションの数
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    // セクション内のセルの数
    func tableView(_ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
            return deviceArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell {
            
            let CellIdentifier : String = "Cell"
        var cell = tableView.dequeueReusableCell(
            withIdentifier: CellIdentifier)
            if cell == nil {
                cell = UITableViewCell(style: UITableViewCellStyle.default,
                    reuseIdentifier: CellIdentifier)
            }
            // セル内に配置するラベルを生成
        let deviceLabel : UILabel  = UILabel(frame: CGRect(x:20, y:20, width:200, height:20))
        deviceLabel.backgroundColor = UIColor.clear
            deviceLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 22.0)
            deviceLabel.text = deviceArray[indexPath.row]
            
            // セル内にラベルを配置
            cell?.contentView.addSubview(deviceLabel)
            
            // セル内に配置するラベルを生成
        let dateLabel : UILabel  = UILabel(frame: CGRect(x:30, y:50, width:200, height:20))
        dateLabel.backgroundColor = UIColor.clear
            dateLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 14.0)
            dateLabel.text = dateArray[indexPath.row]
            
            // セル内にラベルを配置
            cell?.contentView.addSubview(dateLabel)
            
            return cell!
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

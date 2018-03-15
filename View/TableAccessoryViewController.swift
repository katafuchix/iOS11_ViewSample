//
//  TableAccessoryViewController.swift
//  View
//
//

import UIKit

class TableAccessoryViewController: UIViewController  {
    
    var textLabels: Array<String> = Array<String>()
    var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        textLabels = ["textLabel1", "textLabel2", "textLabel3", "textLabel4", "textLabel5"]
        
        tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.plain)
        tableView!.delegate = self
        tableView!.dataSource = self
        self.view.addSubview(tableView!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension TableAccessoryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath:  IndexPath) -> CGFloat {
        return 50
    }
}

extension TableAccessoryViewController: UITableViewDataSource  {
    // セクションの数
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    // セクション内のセルの数
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return textLabels.count
    }
    
    // セルを表示するメソッド
    func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell {
        
        let CellIdentifier : String = "Cell"
        var cell = tableView.dequeueReusableCell(
            withIdentifier: CellIdentifier)
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default,
                                   reuseIdentifier: CellIdentifier)
        }
        
        switch(indexPath.row){
        case 0:
            // アクセサリなし
            cell!.accessoryType = UITableViewCellAccessoryType.none
            
        case 1:
            // 矢印
            cell!.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
            
        case 2:
            // 二重丸で囲まれた矢印
            cell!.accessoryType = UITableViewCellAccessoryType.detailDisclosureButton
            
        case 3:
            // チェックマーク
            cell!.accessoryType = UITableViewCellAccessoryType.checkmark
            
        case 4:
            // 詳細ボタン
            cell!.accessoryType = UITableViewCellAccessoryType.detailButton
        default:
            break
        }
        
        // Configure the cell...
        cell!.textLabel?.text = textLabels[indexPath.row]
        return cell!
    }

}


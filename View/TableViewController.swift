//
//  TableViewController.swift
//  View
//
//

import UIKit

class TableViewController: UIViewController {

    var items = [String]()
    var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        items = ["Menu1", "Menu2", "Menu3", "Menu4", "Menu5", "Menu6"]
        
        // テーブルの初期化
        tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.grouped)
        tableView!.delegate = self
        tableView!.dataSource = self
        
        // 区切り線を指定
        tableView!.separatorStyle = UITableViewCellSeparatorStyle.singleLine
        
        // セルの高さを指定
        tableView!.rowHeight = 50.0
        
        self.view.addSubview(tableView!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension TableViewController:  UITableViewDelegate  {
    
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath:  IndexPath) -> CGFloat {
            return 50
    }
}

extension TableViewController: UITableViewDataSource  {
    
    // セクションの数
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    // セクション内のセルの数
    func tableView(_ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
            return items.count
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
            let cellTitle = items[indexPath.row]
            cell!.textLabel?.text = cellTitle
            return cell!
    }

}


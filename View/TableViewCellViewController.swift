//
//  TableViewCellViewController.swift
//  View
//
//

import UIKit

class TableViewCellViewController: UIViewController {
    
    var textLabels: Array<String> = Array<String>()
    var detailTextLabels: Array<String> = Array<String>()
    var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        textLabels = ["textLabel1", "textLabel2", "textLabel3", "textLabel4"]
        
        detailTextLabels = ["detailLabel1", "detailLabel2", "detailLabel3", "detailLabel4"]
        
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

extension TableViewCellViewController: UITableViewDelegate {

    func tableView( tableView: UITableView,
                    heightForRowAtheightForRowAtheightForRowAt indexPath:  IndexPath) -> CGFloat {
        return 50
    }
    
}

extension TableViewCellViewController: UITableViewDataSource  {
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
            // 画像(左)、主テキスト(右)
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: CellIdentifier)
            
        case 1:
            // 主テキスト(左)、詳細テキスト(右)
            cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: CellIdentifier)
            
        case 2:
            // サブテキスト(左)、テキスト(右)
            cell = UITableViewCell(style: UITableViewCellStyle.value2, reuseIdentifier: CellIdentifier)
            
        case 3:
            // 画像(左)、テキスト(右上)、詳細テキスト(右下)
            cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: CellIdentifier)
            
        default:
            break
        }
        
        // Configure the cell...
        cell!.textLabel?.text = textLabels[indexPath.row]
        cell!.detailTextLabel?.text = detailTextLabels[indexPath.row]
        cell!.imageView?.image = UIImage(named: "sample.jpg")
        return cell!
    }
}



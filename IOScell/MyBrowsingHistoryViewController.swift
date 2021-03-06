//
//  MyBrowsingHistoryViewController.swift
//  IOScell
//
//  Created by Hado on 2017/4/9.
//  Copyright © 2017年 Hado. All rights reserved.
//

import UIKit

class MyBrowsingHistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var tableview: UITableView!
    
    var myBrowsingHistory: [MyBrowsingHistory] = []
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.tableview = UITableView(frame: self.view.frame, style:.grouped)
        self.tableview.delegate = self
        self.tableview.dataSource = self
        
        self.tableview!.register(UITableViewCell.self, forCellReuseIdentifier: "MyHistoryCell")
        self.view.addSubview(self.tableview)
        tableview.reloadData()
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return myBrowsingHistory.count
    }
    //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let identify = "MyHistoryCell"
        let cell = tableview.dequeueReusableCell(withIdentifier: identify, for: indexPath)
        cell.textLabel?.text = "\(myBrowsingHistory[indexPath.row])"
        return cell
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

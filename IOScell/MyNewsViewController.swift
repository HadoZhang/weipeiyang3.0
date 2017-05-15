//
//  MyNewsController.swift
//  IOScell
//
//  Created by Hado on 2017/4/6.
//  Copyright © 2017年 Hado. All rights reserved.
//

import UIKit

class MyNewsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var tableview: UITableView!
    
    var myNews: [MyNewsModal] = []
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        self.tableview = UITableView(frame: self.view.frame, style:.grouped)
        self.tableview.delegate = self
        self.tableview.dataSource = self
        
        self.tableview!.register(UITableViewCell.self, forCellReuseIdentifier: "MyNewsCell")
        self.view.addSubview(self.tableview)
        tableview.reloadData()
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return myNews.count
        }
    //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let identify = "MyNewsCell"
        let cell = tableview.dequeueReusableCell(withIdentifier: identify, for: indexPath)
        cell.textLabel?.text = "\(myNews[indexPath.row])"
        return cell
        
        }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

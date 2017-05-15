//
//  SecondViewController.swift
//  IOScell
//
//  Created by Hado on 2017/5/11.
//  Copyright © 2017年 Hado. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var tableview : UITableView!
    
    var newsList: [newsList] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "新闻"
        let item1 = UIBarButtonItem(title: "Next", style: UIBarButtonItemStyle.plain, target: self, action: "tapBarButton")
        let item2 = UIBarButtonItem(title: "Refresh", style: UIBarButtonItemStyle.plain, target: self, action: "tapBarButton")
        self.navigationItem.rightBarButtonItems = [item1, item2]
        
        self.tableview = UITableView(frame:self.view.frame, style: .grouped)
        self.tableview.delegate = self
        self.tableview.dataSource = self
        self.tableview!.register(UITableViewCell.self, forCellReuseIdentifier: "newsCell")
        self.view.addSubview(self.tableview!)
        
        
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
       return newsList.count
    }

    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableview.dequeueReusableCell(withIdentifier: "newsList", for: indexPath)
        return cell
        
    }
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

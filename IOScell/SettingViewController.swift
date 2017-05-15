//
//  SettingViewController.swift
//  IOScell
//
//  Created by Hado on 2017/4/16.
//  Copyright © 2017年 Hado. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
 
    var tableView: UITableView!
    
    var settingSource = ["邮箱：", "手机号：", "修改密码", "清除缓存", "意见反馈", "检查更新", "关于"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //创建表视图
        self.tableView = UITableView(frame:self.view.frame, style:.grouped)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        //创建一个重用的单元格
        self.tableView!.register(UITableViewCell.self,
                                 forCellReuseIdentifier: "SettingCell")
        self.view.addSubview(self.tableView!)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return settingSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let identify = "SettingCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identify, for: indexPath)
        cell.textLabel?.text = settingSource[indexPath.row]
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator//添加箭头
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

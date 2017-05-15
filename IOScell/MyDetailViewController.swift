//
//  DetailViewController.swift
//  IOScell
//
//  Created by Hado on 2017/4/5.
//  Copyright © 2017年 Hado. All rights reserved.
//

import UIKit
import SnapKit

class MyDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
//    var itemString:String?
    var tableView: UITableView!
    
    var MyData = ["我的头像", "天外天账号", "", "姓名", "学号／学工号", "身份", "学院", "专业"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        //创建表视图
        self.tableView = UITableView(frame:self.view.frame, style:.grouped)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        //创建一个重用的单元格
        self.tableView!.register(UITableViewCell.self,
                                 forCellReuseIdentifier: "MyDataCell")
        self.view.addSubview(self.tableView!)
        
        // 设置行高为自动适配
        self.tableView.estimatedRowHeight = 70
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        self.view.addSubview(self.tableView!)

//
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return MyData.count
 }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let identify = "MyDataCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identify, for: indexPath)
        switch indexPath.row {
        case 0:
            let revampHeadImageView = UIImageView()
            revampHeadImageView.image = #imageLiteral(resourceName: "表情")
            revampHeadImageView.sizeToFit()
            cell.contentView.addSubview(revampHeadImageView)
            revampHeadImageView.snp.makeConstraints{(make) -> Void in
                make.top.equalTo(cell.contentView).offset(25)
//                make.left.equalTo(cell.contentView).offset(290)
                make.bottom.equalTo(cell.contentView).offset(-25)
                make.right.equalTo(cell.contentView).offset(-30)
                
                make.width.equalTo(50)
                make.height.equalTo(50)

            }
        default: break
        }
        cell.textLabel?.text = MyData[indexPath.row]
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

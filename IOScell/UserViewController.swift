//
//  ViewController.swift
//  IOScell
//
//  Created by Hado on 2017/3/22.
//  Copyright © 2017年 Hado. All rights reserved.
//

import UIKit
import SnapKit

class UserViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView!
    var uiswitch: UISwitch!
    
    
    
    var cellNames = [
        0: [""],
        1: ["我的消息","我的收藏","浏览记录"],
        2: ["夜间模式","办公网解绑"],
        3: ["设置"]
    ]
    
    var namesImage = [0:[""],
                      1:["我的消息","我的收藏","浏览"],
                      2:["夜间模式","门店绑定"],
                      3:["设置"]
    ]
    
    //    @IBOutlet weak var tableView: UITableView!
    //    var myInterface = ["天外天账户名","我的消息","我的收藏","浏览记录","夜间模式","办公网绑定","设置"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //导航栏（Navigationbar）的配置
        
        
//        self.navigationController?.navigationBar.barTintColor = UIColor(valueRGB: 0x00a1e9, alpha: 1.0)
//        self.navigationController?.navigationBar.titleTextAttributes =
//            [NSForegroundColorAttributeName: UIColor.white]
//        self.navigationController?.navigationBar.tintColor = UIColor.white
        
//        let navigationBar = NavigationBar(id: "")
        
        
        self.title = "更多设置"
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        print(self.cellNames)
        //创建表视图
        self.tableView = UITableView(frame:self.view.frame, style:.grouped)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        //创建一个重用的单元格
        self.tableView!.register(UITableViewCell.self,
                                 forCellReuseIdentifier: "SwiftCell")
        
        // 设置行高为自动适配
        self.tableView.estimatedRowHeight = 100
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        self.view.addSubview(self.tableView!)
        /*
         
         //创建标题
         let headerLabel = UILabel(frame: CGRect(x:0, y:0, width: self.view.bounds.size.width, height: 60))
         headerLabel.backgroundColor = UIColor.blue
         headerLabel.textColor = UIColor.white
         headerLabel.numberOfLines = 0
         headerLabel.lineBreakMode = .byWordWrapping
         headerLabel.text = "更多设置"
         headerLabel.font = UIFont.italicSystemFont(ofSize: 20)
         self.tableView!.tableHeaderView = headerLabel
         */
        
        //        func prefersStatusBarHidden() -> Bool {
        //            return true
        //        }
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        //        return myInterface.count
        let data = self.cellNames[section]
        return data!.count
        
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        //        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //        cell.textLabel?.text = myInterface[indexPath.row]
        //        return cell
        
        let CellNo = indexPath.section
        let identify : String = "SwiftCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identify, for: indexPath) //as UITableViewCell
        var data = self.cellNames[CellNo]
        //        cell.textLabel?.text = data![indexPath.row]
        
        
        switch (CellNo){
        case 0:
            let customCell = CustomTableViewCell(id: "")
            return customCell
            
        case 1:
            cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator//添加箭头
            cell.selectionStyle = UITableViewCellSelectionStyle.none
        case 2:
            uiswitch = UISwitch()
            //设置位置（开关大小无法设置）
            //          uiswitch.center = CGPoint(x:100, y:50)
            cell.accessoryView = uiswitch
            
            //设置默认值
            uiswitch.isOn = false
            uiswitch.addTarget(self, action: #selector(self.switchDidChange), for: .valueChanged)
            self.view.addSubview(uiswitch)
            let image = UIImage(named:"heart.png")
            cell.imageView?.image = image
        case 3:
            let image = UIImage(named:"heart.png")
            cell.imageView?.image = image
        default:
            print("nil")
        }
        cell.textLabel?.text = data![indexPath.row]
        
        cell.imageView?.image = UIImage(named: (namesImage[indexPath.section]?[indexPath.row])!)
        
        let myImageSize = CGSize(width: 15, height: 15)
        
        UIGraphicsBeginImageContextWithOptions(myImageSize, false, 0.0)
        
        let myImageRect = CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: 15, height: 15))
        
        cell.imageView!.image?.draw(in: myImageRect)
        cell.imageView!.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        
        return cell
    }
    
    // UISWitch
    func switchDidChange() {
        
    }
    // UITableViewDelegate 方法，处理列表项的选中事件
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView!.deselectRow(at: indexPath, animated: true)
        switch indexPath.section {
        case 0:
            let vc0 = MyDetailViewController()
            self.navigationController?.pushViewController(vc0, animated: true)
        case 1:
            switch indexPath.row {
            case 0:
                let vc1 = MyNewsViewController()
                self.navigationController?.pushViewController(vc1, animated: true)
            case 1:
                let vc2 = MyCollectionViewController()
                self.navigationController?.pushViewController(vc2, animated: true)
            case 2:
                let v3 = MyBrowsingHistoryViewController()
                self.navigationController?.pushViewController(v3, animated: true)
            default:
                break
            }
        case 2:
            break
        case 3:
            let v4 = SettingViewController()
            self.navigationController?.pushViewController(v4, animated: true)
        default:
            break
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


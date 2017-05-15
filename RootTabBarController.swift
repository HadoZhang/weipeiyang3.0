//
//  RootTabBarControllerViewController.swift
//  IOScell
//
//  Created by Hado on 2017/5/11.
//  Copyright © 2017年 Hado. All rights reserved.
//

import UIKit

class RootTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //创建tabbar的子控制器
        self.creatSubviewController()
        // Do any additional setup after loading the view.
    }
    func creatSubviewController(){
        let usualtoolVC = UsualToolViewController()
        let usualtoolNC = UINavigationController(rootViewController: usualtoolVC)
        let item1 : UITabBarItem = UITabBarItem (title: "常用", image: UIImage(named: "设为常用1"), selectedImage: UIImage(named: "设为常用1"))
        usualtoolNC.tabBarItem = item1
        
        let newsVC = NewsViewController()
        let newsNC = UINavigationController(rootViewController: newsVC)
        let item2 : UITabBarItem = UITabBarItem (title: "新闻", image: UIImage(named: "常用信息1"), selectedImage: UIImage(named: "常用信息1"))
        newsNC.tabBarItem = item2
        
        let functionVC = FunctionViewController()
        let functionNC = UINavigationController(rootViewController: functionVC)
        let item3: UITabBarItem = UITabBarItem (title: "功能页", image: UIImage(named: "功能页"), selectedImage: UIImage(named: "功能页"))
        functionNC.tabBarItem = item3
        
        let userVC = UserViewController()
        let userNC = UINavigationController(rootViewController: userVC)
        let item4 : UITabBarItem = UITabBarItem (title: "我的", image: UIImage(named: "个人设置1"), selectedImage: UIImage(named: "个人设置1"))
        userNC.tabBarItem = item4
        
        let tabArray = [usualtoolNC, newsNC, functionNC, userNC]
        self.viewControllers = tabArray
        self.tabBar.tintColor = UIColor(valueRGB: 0x00a1e9, alpha: 1.0)
        
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

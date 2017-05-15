//
//  NavigationBar.swift
//  IOScell
//
//  Created by Hado on 2017/5/15.
//  Copyright © 2017年 Hado. All rights reserved.
//

import UIKit

class NavigationBar: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    convenience init(id: String){
        self.init()
        
//        self.navigationController?.navigationBar.barTintColor = UIColor(valueRGB: 0x00a1e9, alpha: 1.0)
//        self.navigationController?.navigationBar.titleTextAttributes =
//            [NSForegroundColorAttributeName: UIColor.white]
//        self.navigationController?.navigationBar.tintColor = UIColor.white
        
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

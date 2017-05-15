//
//  MynewsModal.swift
//  IOScell
//
//  Created by Hado on 2017/4/7.
//  Copyright © 2017年 Hado. All rights reserved.
//

import UIKit

class MyNewsModal{

    var title = ""
    var source = ""
    var picture = ""
    var index = 0
    
    init(title: String, source: String, index: Int, picture: String) {
        self.title = title
        self.source = source
        self.index = index
        self.picture = picture
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

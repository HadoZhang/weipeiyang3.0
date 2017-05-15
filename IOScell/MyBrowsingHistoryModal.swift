//
//  MyBrowsingHistoryModal.swift
//  IOScell
//
//  Created by Hado on 2017/4/16.
//  Copyright © 2017年 Hado. All rights reserved.
//

import Foundation

class MyBrowsingHistory{
    
    var pictureString = ""
    var index = 0
    var source = ""
    var title = ""
    
    init(pictureString: String, index: Int, source: String, title: String) {
        self.pictureString = pictureString
        self.index = index
        self.source = source
        self.title = title
    }

}

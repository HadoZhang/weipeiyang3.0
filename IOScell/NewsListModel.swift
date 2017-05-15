//
//  NewsListModel.swift
//  IOScell
//
//  Created by Hado on 2017/5/15.
//  Copyright © 2017年 Hado. All rights reserved.
//

import UIKit

class newsList{
    var picString = ""
    var index = 0
    var source = ""
    var visitor = 0
    var message = 0
    var promulgator = ""
    var title = ""
    
    init(picString: String, index: Int, source: String, visitor: Int, message: Int, promulgator: String, title: String) {
        self.picString = picString
        self.index = index
        self.source = source
        self.visitor = visitor
        self.message = message
        self.promulgator = promulgator
        self.title = title
    }
    
    
    
    
}

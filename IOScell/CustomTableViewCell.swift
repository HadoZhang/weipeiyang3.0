//
//  CustomTableViewCell.swift
//  IOScell
//
//  Created by Hado on 2017/4/12.
//  Copyright © 2017年 Hado. All rights reserved.
//

import UIKit
import SnapKit

class CustomTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    convenience init(id: String) {
        self.init()
        let headPortraitV = UIImageView()
        headPortraitV.image = #imageLiteral(resourceName: "apple")
        headPortraitV.sizeToFit()
        contentView.addSubview(headPortraitV)
        
        //self.tableView.addSubview(cell.contentView)
        headPortraitV.snp.makeConstraints{(make) -> Void in
            make.top.equalTo(self.contentView).offset(25)
            make.left.equalTo(self.contentView).offset(20)
            make.bottom.equalTo(self.contentView).offset(-25)
            
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        headPortraitV.layer.cornerRadius = 50/2 //headPortraitV.frame.size.width/2
        headPortraitV.clipsToBounds = true
        
        let TWTNameLabel = UILabel()
        TWTNameLabel.text = "天外天账户名"
        TWTNameLabel.sizeToFit()
        contentView.addSubview(TWTNameLabel)
        TWTNameLabel.snp.makeConstraints{(make) -> Void in
            make.top.equalTo(self.contentView).offset(30)
            make.left.equalTo(headPortraitV.snp.right).offset(30)
            
        }
        let introLabel = UILabel()
        introLabel.text = "这是一句话简介可用于在评论区显示"
        introLabel.font = UIFont.systemFont(ofSize: 13)
        introLabel.textColor = UIColor(red: 155/255.0, green: 155/255.0, blue: 155/255.0, alpha: 1.0)
        //            introLabel.lineBreakMode = NsL
        introLabel.sizeToFit()
        contentView.addSubview(introLabel)
        introLabel.snp.makeConstraints{(make) -> Void in
            make.top.equalTo(TWTNameLabel.snp.bottom).offset(10)
            make.left.equalTo(headPortraitV.snp.right).offset(30)
            make.bottom.equalTo(self.contentView).offset(-20)
            make.right.equalTo(self.contentView).offset(-20)
        }
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

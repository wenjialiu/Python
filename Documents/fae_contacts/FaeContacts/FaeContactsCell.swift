//
//  FaeContactsCell.swift
//  FaeContacts
//
//  Created by 子不语 on 2017/6/13.
//  Copyright © 2017年 Yue. All rights reserved.
//

import UIKit

class FaeContactsCell: UITableViewCell {
    
    var imgAvatar: UIImageView!
    var lblUserName: UILabel!
    var lblUserSaying: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        separatorInset = UIEdgeInsets.zero
        layoutMargins = UIEdgeInsets.zero
        loadFriendsCellContent()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func loadFriendsCellContent() {
        imgAvatar = UIImageView()
        imgAvatar.frame = CGRect(x: 14, y: 12, width: 50, height: 50)
        imgAvatar.layer.cornerRadius = 25
        imgAvatar.contentMode = .scaleAspectFill
        imgAvatar.clipsToBounds = true
        imgAvatar.backgroundColor = .red
        addSubview(imgAvatar)
        
        lblUserName = UILabel()
        lblUserName.textAlignment = .left
        lblUserName.textColor = UIColor.faeAppInputTextGrayColor()
        lblUserName.font = UIFont(name: "AvenirNext-Medium", size: 18)
        lblUserName.backgroundColor = .blue
        addSubview(lblUserName)
        
        lblUserSaying = UILabel()
        lblUserSaying.textAlignment = .left
        lblUserSaying.textColor = UIColor.faeAppInputPlaceholderGrayColor()
        lblUserSaying.font = UIFont(name: "AvenirNext-Medium", size: 13)
        lblUserSaying.backgroundColor = .green
        addSubview(lblUserSaying)
        
        addConstraintsWithFormat("H:|-84-[v0]-58-|", options: [], views: lblUserName)
        addConstraintsWithFormat("H:|-84-[v0]-58-|", options: [], views: lblUserSaying)
        addConstraintsWithFormat("V:|-17-[v0(20)]-0-[v1(20)]-17-|", options: [], views: lblUserName, lblUserSaying)
        
    }
}

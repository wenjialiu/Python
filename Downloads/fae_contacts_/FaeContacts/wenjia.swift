//
//  RequestsViewController.swift
//  FaeContacts
//
//  Created by 子不语 on 2017/6/22.
//  Copyright © 2017年 Yue. All rights reserved.
//

import UIKit

extension ContactsViewController {
    
    
    
    func loadNavBar2() {
        uiNavBar = FaeNavBar(frame: .zero)
        view.addSubview(uiNavBar)
        //        self.uiNavBar.leftBtn.isHidden = false
        //        uiNavBar.leftBtn.setImage(#imageLiteral(resourceName: "btn_left"), for: .normal)
        uiNavBar.lblTitle.text = "Requests"
        uiNavBar.lblTitle.font = UIFont(name: "AvenirNext-Medium", size: 20)
        loadTabs()
    }
    
    func loadTabs() {
        uiTabView = UIView(frame: CGRect(x: 0, y: 64, width: screenWidth, height: 30))
        uiTabView.backgroundColor = .white
        view.addSubview(uiTabView)
        //view.bringSubview(toFront: uiTabView)
        
        btnReceived = UIButton()
        uiTabView.addSubview(btnReceived)
        uiTabView.addConstraintsWithFormat("H:|-35-[v0(130)]", options: [], views: btnReceived)
        uiTabView.addConstraintsWithFormat("V:|-0-[v0(30)]", options: [], views: btnReceived)
        btnReceived.tag = 0
        btnReceived.setTitle("Received", for: .normal)
        btnReceived.setTitleColor(UIColor.faeAppRedColor(), for: .normal)
        btnReceived.titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 18)
        btnReceived.addTarget(self, action: #selector(self.switchTabs(_:)), for: .touchUpInside)
        
        btnRequested = UIButton()
        uiTabView.addSubview(btnRequested)
        btnRequested.tag = 1
        btnRequested.setTitle("Requested", for: .normal)
        btnRequested.setTitleColor(UIColor.faeAppInactiveBtnGrayColor(), for: .normal)
        btnRequested.titleLabel?.font = UIFont(name: "AvenirNext-Regular", size: 18)
        uiTabView.addConstraintsWithFormat("H:[v0(130)]-35-|", options: [], views: btnRequested)
        uiTabView.addConstraintsWithFormat("V:|-0-[v0(30)]", options: [], views: btnRequested)
        btnRequested.addTarget(self, action: #selector(self.switchTabs(_:)), for: .touchUpInside)
        
        uiBottomLine = UIView(frame: CGRect(x: 0, y: uiTabView.frame.height - 1, width: screenWidth, height: 1))
        uiTabView.addSubview(uiBottomLine)
        uiBottomLine.backgroundColor = UIColor.faeAppNavBarBorderColor()
        uiTabView.bringSubview(toFront: btnReceived)
        
        uiRedBottomLine = UIView()
        btnReceived.addSubview(uiRedBottomLine)
        uiRedBottomLine.backgroundColor = UIColor.faeAppRedColor()
        btnReceived.addConstraintsWithFormat("H:|-0-[v0]-0-|", options: [], views: uiRedBottomLine)
        btnReceived.addConstraintsWithFormat("V:[v0(2)]-0-|", options: [], views: uiRedBottomLine)
        
    }
    
    func switchTabs(_ sender: UIButton) {
        if(sender.tag == 1) {
            btnRequested.titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 18)
            btnRequested.setTitleColor(UIColor.faeAppRedColor(), for: .normal)
            btnReceived.titleLabel?.font = UIFont(name: "AvenirNext-Regular", size: 18)
            btnReceived.setTitleColor(UIColor.faeAppInactiveBtnGrayColor(), for: .normal)
            btnRequested.addSubview(uiRedBottomLine)
            uiTabView.bringSubview(toFront: btnRequested)
            btnRequested.addConstraintsWithFormat("H:|-0-[v0]-0-|", options: [], views: uiRedBottomLine)
            btnRequested.addConstraintsWithFormat("V:[v0(2)]-0-|", options: [], views: uiRedBottomLine)
        }
        else {
            btnReceived.titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 18)
            btnReceived.setTitleColor(UIColor.faeAppRedColor(), for: .normal)
            btnRequested.titleLabel?.font = UIFont(name: "AvenirNext-Regular", size: 18)
            btnRequested.setTitleColor(UIColor.faeAppInactiveBtnGrayColor(), for: .normal)
            btnReceived.addSubview(uiRedBottomLine)
            uiTabView.bringSubview(toFront: btnReceived)
            btnReceived.addConstraintsWithFormat("H:|-0-[v0]-0-|", options: [], views: uiRedBottomLine)
            btnReceived.addConstraintsWithFormat("V:[v0(2)]-0-|", options: [], views: uiRedBottomLine)
        }
    }
    
}

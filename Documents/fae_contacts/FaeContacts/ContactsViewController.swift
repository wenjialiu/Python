//
//  ViewController.swift
//  FaeContacts
//
//  Created by Yue on 6/13/17.
//  Copyright © 2017 Yue. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController {
    
    // Ying
    var uiviewNavBar: FaeNavBar!
    var blurViewDropDownMenu: UIVisualEffectView!
    var btnTop: UIButton!
    var btnBottom: UIButton!
    var navBarMenuBtnClicked = false
    
    var curtTitle: String = "Friends"
    var titleArray: [String] = ["Following", "Followers"]
    var btnNavBarMenu: UIButton!
    // End of Ying
    
    // Justin
    let testArray: [String] = ["testOne", "testTwo", "testThree", "testFour"] // for testing.
    var tblContacts: UITableView!
    var filtered: [String] = [] // for search bar results
    var schbarContacts: FaeSearchBar!
    var uiviewBottomNav: UIView!
    var btnFFF: UIButton! // btnFFF switches to friends, following, followed.
    var btnRR: UIButton! // btnRR switches to requests, requested.
    // End of Justin
    
    
    var uiNavBar: FaeNavBar!
    var uiTabView: UIView!
    var btnReceived: UIButton!
    var btnRequested: UIButton!
    var uiBottomLine: UIView!
    var uiRedBottomLine: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadTable()
        loadNavBar()
        definesPresentationContext = true
    }
    
}

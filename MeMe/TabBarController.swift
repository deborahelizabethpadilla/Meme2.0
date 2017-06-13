//
//  TabBarController.swift
//  MeMe2.0
//
//  Created by Deborah on 6/13/17.
//  Copyright © 2017 Deborah. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Make Unselected Icons A Different Color
        
        self.tabBar.unselectedItemTintColor = UIColor.black
    }

}

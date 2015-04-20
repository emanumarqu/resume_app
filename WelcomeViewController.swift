//
//  WelcomeViewController.swift
//  REALApp
//
//  Created by Emanuel on 4/20/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import Foundation

class WelcomeViewController: UIViewController {
    @IBOutlet weak var menuButton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    
}
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
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var background: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        self.roundingUIView(self.avatar, cornerRadiusParam: 10)
//        self.roundingUIView(self.background, cornerRadiusParam: 10)
        
    }
    
    private func roundingUIView(let aView: UIView!, let cornerRadiusParam: CGFloat!) {
        aView.clipsToBounds = true
        aView.layer.cornerRadius = cornerRadiusParam
    }
    
    
}
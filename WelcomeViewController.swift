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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        self.roundImage()
        
    }
    
    private func roundImage() {
//        For circlular image
//        self.myUIImageView.layer.cornerRadius = self.myUIImageView.frame.size.width / 2
        
        self.avatar.layer.cornerRadius = 20.0
        self.avatar.clipsToBounds = true
        
        // Adding a border to the image profile
//        self.avatar.layer.borderWidth = 2.5
//        self.avatar.layer.borderColor = UIColor.whiteColor().CGColor
    }
    
}
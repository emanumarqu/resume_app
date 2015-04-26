//
//  ResumeWebView.swift
//  REALApp
//
//  Created by Emanuel on 4/25/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit

class ResumeWebView: UIViewController {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var resumeWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

        let url = NSURL(string: "http://emanuelmarquez.com/#two")
        let urlRequest = NSURLRequest(URL: url!)
        self.resumeWebView.loadRequest(urlRequest)
    }
    
    
}
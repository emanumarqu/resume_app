//
//  WebViewController.swift
//  REALApp
//
//  Created by Emanuel on 4/21/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://emanuelmarquez.com")
        let urlRequest = NSURLRequest(URL: url!)
        self.webView.loadRequest(urlRequest)
        
    }
    
}

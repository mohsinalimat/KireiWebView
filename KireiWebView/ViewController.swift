//
//  ViewController.swift
//  KireiWebView
//
//  Created by Takuya Okamoto on 2015/07/09.
//  Copyright (c) 2015年 Uniface. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testView = UIButton()
        testView.frame = CGRect(x: 0, y: 0, width: 88, height: 88)
        testView.center = self.view.center
        testView.setTitle("open", forState: .Normal)
        testView.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        self.view.addSubview(testView)
        testView.addTarget(self, action: "didTapButton", forControlEvents: UIControlEvents.TouchUpInside)
        
        
        NSTimer.schedule(delay: 0.4) { timer in
            self.didTapButton()
        }
    }

    func didTapButton() {
        let url = "http://twitter.com"
        let kireiWebView = KireiWebViewController(url: url)
        kireiWebView.enableOpenInSafari = true
        kireiWebView.openInSafariText = "Safariでみる"
        kireiWebView.enablePcUserAgent = true
        kireiWebView.shareButtonAction = { url, title in
            println(title)
            println(url)
        }
        self.presentViewController(kireiWebView, animated: true, completion: nil)
    }

}


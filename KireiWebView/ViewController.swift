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
        testView.frame = CGRect(x: 100, y: 100, width: 100, height: 300)
        testView.backgroundColor = UIColor.redColor().colorWithAlphaComponent(0.2)
        self.view.addSubview(testView)
        testView.addTarget(self, action: "didTapButton", forControlEvents: UIControlEvents.TouchUpInside)
        
        
        NSTimer.schedule(delay: 0.4) { timer in
            self.didTapButton()
        }
    }

    func didTapButton() {
        let url = "http://okini.eplus.jp/redirect/s/58851/1505140031"
        let kireiWebView = KireiWebViewController(url: url)
        kireiWebView.enableOpenInSafari = true
        kireiWebView.openInSafariText = "Safariでみる"
        kireiWebView.shareButtonAction = { url, title in
            println(title)
            println(url)
        }
        self.presentViewController(kireiWebView, animated: true, completion: nil)
    }

}


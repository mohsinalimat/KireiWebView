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
        
        let testView = UIView()
        testView.frame = CGRect(x: 100, y: 100, width: 100, height: 300)
        testView.backgroundColor = UIColor.redColor().colorWithAlphaComponent(0.2)
        self.view.addSubview(testView)
        
        NSTimer.schedule(delay: 0.4) { timer in
            let url = "http://okini.eplus.jp/redirect/s/58851/1505140031"
            let kireiWebView = KireiWebViewController(url: url)
            self.presentViewController(kireiWebView, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}


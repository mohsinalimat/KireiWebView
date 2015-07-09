//
//  KireiWebViewController+Util.swift
//  KireiWebView
//
//  Created by Takuya Okamoto on 2015/07/09.
//  Copyright (c) 2015年 Uniface. All rights reserved.
//

import UIKit


// util
extension KireiWebViewController {
    func changeUserAgentAsPC(){
        let userAgentStr = "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.63 Safari/537.36"
        let dic:NSDictionary = ["UserAgent":userAgentStr]
        NSUserDefaults.standardUserDefaults().registerDefaults(dic as [NSObject : AnyObject])
    }
    
    func imageNamed(name:String)->UIImage? {
        return UIImage(named: name, inBundle: NSBundle(forClass: KireiWebViewController.self), compatibleWithTraitCollection: nil)
    }
    
    func hirakakuFont(size: CGFloat) -> UIFont {
        return UIFont(name: "HiraKakuProN-W3", size: size)!
    }
}
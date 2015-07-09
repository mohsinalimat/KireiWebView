//
//  KireiWebView.swift
//  KireiWebView
//
//  Created by Takuya Okamoto on 2015/07/09.
//  Copyright (c) 2015年 Uniface. All rights reserved.
//

import UIKit
import WebKit
import SnapKit

class KireiWebViewController: UIViewController {
    
    var webView: WKWebView!
    private let initialURL:String
    
    init(url:String){
        initialURL = url
        super.init(nibName: nil, bundle: nil)
    }
    required init(coder aDecoder: NSCoder) {
        initialURL = ""
        super.init(coder: aDecoder)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeUserAgentAsPC()
        webView = WKWebView()
        layout()
        if let url = NSURL(string: initialURL){
            webView.loadRequest(NSURLRequest(URL: url))
        }
    }
    
}


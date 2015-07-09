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

public class KireiWebViewController: UIViewController {
    
    var webView: WKWebView!
    private let initialURL:String
    public var shareButtonAction: ((url:NSURL?, title:String?)->())? = nil

    let shareButton = UIButton()
    let closeButton = UIButton()

    public init(url:String){
        initialURL = url
        super.init(nibName: nil, bundle: nil)
    }
    public required init(coder aDecoder: NSCoder) {
        initialURL = ""
        super.init(coder: aDecoder)
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        changeUserAgentAsPC()
        webView = WKWebView()
        layout()
        setupButtonActions()
        if let url = NSURL(string: initialURL){
            webView.loadRequest(NSURLRequest(URL: url))
        }
    }
    
    
    
    
    func setupButtonActions() {
        shareButton.addTarget(self, action: "didTapShareButton", forControlEvents: UIControlEvents.TouchUpInside)
        closeButton.addTarget(self, action: "didTapCloseButton", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func didTapCloseButton() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func didTapShareButton() {
        if shareButtonAction != nil {
            shareButtonAction!(url:webView.URL, title:webView.title)
        }
        else {
            openActivityView(nil)
        }
    }
}


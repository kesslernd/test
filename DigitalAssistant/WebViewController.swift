//
//  WebViewController.swift
//  DigitalAssistant
//
//  Created by Nate Kessler on 2/9/17.
//  Copyright © 2017 Matt Lampe. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    var urlToLoad: String = "" {
        didSet {
            loadUrl()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    let webView: UIWebView = {
        let frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height - 60)
        let webView = UIWebView(frame: frame)
        return webView
    }()
    
    func setupViews(){
        view.addSubview(webView)
    }
    
    func loadUrl(){
        let url = URL(string: self.urlToLoad)
        let request = URLRequest(url: url)
        webView.loadRequest(request)
    }
}

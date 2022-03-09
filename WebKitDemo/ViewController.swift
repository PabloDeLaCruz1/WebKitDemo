//
//  ViewController.swift
//  WebKitDemo
//
//  Created by Pablo De La Cruz on 3/8/22.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var wk: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = URL(string: "https://google.com")!
        wk.load(URLRequest(url: url))
    }
    
    override func loadView() {
        wk = WKWebView()
        wk.navigationDelegate = self
        view = wk
    }


}


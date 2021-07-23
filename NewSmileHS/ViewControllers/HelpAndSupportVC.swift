//
//  HelpAndSupportVC.swift
//  NewSmileHS
//
//  Created by thang on 23/07/2021.
//

import UIKit
import WebKit

let helpAndSupport = "https://development.newsmile.app/help/support/customer="

class HelpAndSupportVC: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    var accessToken: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Help&Support"
        loadWebView()
    }
    
    private func loadWebView() {
        if let token = accessToken,let url = URL(string: "\(helpAndSupport)\(token)") {
            self.webView.cleanAllCookies()
            self.webView.refreshCookies()
            self.webView.frame = self.view.bounds
            self.webView.load(URLRequest(url: url))
            self.webView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
            self.view.addSubview(self.webView)
        }
    }
}

//
//  DetailViewController.swift
//  Blog Reader
//
//  Created by Roman on 2/1/16.
//  Copyright © 2016 Roman Puzey. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let postWebView = self.webView {

                postWebView.loadHTMLString(detail.valueForKey("content")!.description, baseURL: NSURL(string:"https://googleblog.blogspot.com/"))
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


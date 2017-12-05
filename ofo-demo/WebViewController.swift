//
//  WebViewController.swift
//  ofo-demo
//
//  Created by PaddyGu on 2017/12/5.
//  Copyright © 2017年 PaddyGu. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    //15
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //16：设置webViewController的title
        self.title = "热门活动"
        let url = NSURL(string: "http://m.ofo.so/active.html")
        let request = NSURLRequest(url: url! as URL)
        
        webView.loadRequest(request as URLRequest)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

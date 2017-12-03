//
//  ViewController.swift
//  ofo-demo
//
//  Created by PaddyGu on 2017/12/1.
//  Copyright © 2017年 PaddyGu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //修改导航栏item的主题颜色，否则将会把背景图片按照默认的蓝色主题渲染。发现下面两句对storyboard设置的item并不起作用，所以将自己手动写代码设置左右item背景图片及主题色。
        //self.navigationItem.leftBarButtonItem?.image?.withRenderingMode(.alwaysOriginal)
        //self.navigationItem.rightBarButtonItem?.image?.withRenderingMode(.alwaysOriginal)
        
        self.navigationItem.leftBarButtonItem?.image = #imageLiteral(resourceName: "leftTopImage").withRenderingMode(.alwaysOriginal)
        self.navigationItem.rightBarButtonItem?.image = #imageLiteral(resourceName: "rightTopImage").withRenderingMode(.alwaysOriginal)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


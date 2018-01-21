//
//  AboutUsController.swift
//  ofo-demo
//
//  Created by PaddyGu on 2018/1/21.
//  Copyright © 2018年 PaddyGu. All rights reserved.
//

import UIKit
import SWRevealViewController

class AboutUsController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //获取子视图中获取父视图（容器视图），并添加切换的方法
        if let revealVC = revealViewController() {
            //设置左边栏滑动的宽度
            revealVC.rearViewRevealWidth = 280
            
            //设置目标
            navigationItem.leftBarButtonItem?.target = revealVC
            //打开的动作，右边调用OC中的方法，SWRVC的侧边栏切换方法
            navigationItem.leftBarButtonItem?.action = #selector(SWRevealViewController.revealToggle(_:))
            //给当前的View添加平移手势
            view.addGestureRecognizer(revealVC.panGestureRecognizer())
            
        }
        
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

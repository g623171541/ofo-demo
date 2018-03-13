//
//  ViewController.swift
//  ofo-demo
//
//  Created by PaddyGu on 2017/12/1.
//  Copyright © 2017年 PaddyGu. All rights reserved.
//

import UIKit
import SWRevealViewController

class ViewController: UIViewController {
    //44.增加一个控制器中的全局属性。加一个感叹号说明mapView是一定有值的
    var mapView: MAMapView!
    
    
    @IBOutlet weak var panelView: UIView!
    
    //点击定位按钮
    @IBAction func locationBtnTip(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //44. 初始化mapView
        mapView = MAMapView(frame: view.bounds)
        view.addSubview(mapView )
        
        //38
        view.bringSubview(toFront: panelView)
        
        //修改导航栏item的主题颜色，否则将会把背景图片按照默认的蓝色主题渲染。发现下面两句对storyboard设置的item并不起作用，所以将自己手动写代码设置左右item背景图片及主题色。
        //self.navigationItem.leftBarButtonItem?.image?.withRenderingMode(.alwaysOriginal)
        //self.navigationItem.rightBarButtonItem?.image?.withRenderingMode(.alwaysOriginal)
        self.navigationItem.leftBarButtonItem?.image = #imageLiteral(resourceName: "leftTopImage").withRenderingMode(.alwaysOriginal)
        self.navigationItem.rightBarButtonItem?.image = #imageLiteral(resourceName: "rightTopImage").withRenderingMode(.alwaysOriginal)
        
        //10：设置当前viewController的title为一个图片
        self.navigationItem.titleView = UIImageView(image: #imageLiteral(resourceName: "ofoLogo"))
        //18：设置跳转到的那个页面的返回按钮 只有一个箭头没有title
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
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


}


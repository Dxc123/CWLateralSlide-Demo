//
//  TabBarViewController.swift
//  CWLateralSlide侧滑使用Demo
//
//  Created by Dxc_iOS on 2018/1/31.
//  Copyright © 2018年 代星创. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
        setupSubNav()
    }
    func setupSubNav() {
        let homeVC = UINavigationController.init(rootViewController: FirstViewController())
        let integralVC = UINavigationController.init(rootViewController: SecondViewController())
       
        viewControllers = [homeVC, integralVC]
        
        
        let titles = ["首页",  "我的"]
        var normalImages = ["ic_home_tea",
                            "ic_home_market",
                            "ic_home_shopping",
                            "ic_home_my"]
        var selectedImages = ["ic_home_tea_pressed",
                              "ic_home_market_pressed",
                              "ic_home_shopping_pressed", "ic_home_my_pressed"]
        
        if let items = tabBar.items {
            for (index, item) in items.enumerated() {
                item.title = titles[index]
                item.titlePositionAdjustment.vertical = -3.0
                //    tabBarItem 的选中和不选中图片属性
                item.image = UIImage(named: normalImages[index])?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
                item.selectedImage = UIImage(named: selectedImages[index])?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
                
                
                //    tabBarItem 的选中和不选中文字属性
                item.setTitleTextAttributes([NSAttributedStringKey.foregroundColor:UIColor.gray], for: .normal)
                item.setTitleTextAttributes([NSAttributedStringKey.foregroundColor:UIColor.green], for: .selected)
                
                
                
            }
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

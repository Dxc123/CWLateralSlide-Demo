//
//  FirstViewController.swift
//  CWLateralSlide侧滑使用Demo
//
//  Created by Dxc_iOS on 2018/1/31.
//  Copyright © 2018年 代星创. All rights reserved.
//

import UIKit
import CWLateralSlide
class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "首页"
        view.backgroundColor = UIColor.white
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "ic_home_market_pressed")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), style: .plain, target: self, action: #selector(lefttapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "ic_home_market_pressed")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), style: .plain, target: self, action: #selector(righttapped))
    }
    @objc func lefttapped(){
        print("左侧")
//        self.navigationController?.pushViewController(LeftViewController(), animated: true)
    self.cw_showDefaultDrawerViewController(LeftViewController())//默认左侧滑出
    }

    @objc func righttapped(){
        print("右侧")
        let Configuration = CWLateralSlideConfiguration.default()
        Configuration?.direction = CWDrawerTransitionDirection.right// 从右边滑出
         self.cw_showDrawerViewController(RightViewController(), animationType: CWDrawerAnimationType.default, configuration: Configuration)
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

//
//  LeftViewController.swift
//  CWLateralSlide侧滑使用Demo
//
//  Created by Dxc_iOS on 2018/1/31.
//  Copyright © 2018年 代星创. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController {
    var tableView:UITableView!
    var titles = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "leftVC"
        view.backgroundColor = UIColor.white
        tableView = UITableView.init(frame: view.bounds, style: .plain)
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "homeCell")
        titles = ["present下一个界面","Push下一个界面","呵呵","Push下一个界面","显示alertView","主动收起抽屉"]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
//MARK:-->UITableViewDelegate, UITableViewDataSource
extension LeftViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
            tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath)
        
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = titles[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.row == 0 {
              self.present(NextViewController(), animated: true, completion: nil)
        }else if indexPath.row == titles.count{
            self.dismiss(animated: true, completion: nil)
           
        }else{
            self.navigationController?.pushViewController(NextViewController(), animated: true)
            
        }
        
    }
    
    
}


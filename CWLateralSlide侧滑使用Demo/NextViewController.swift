//
//  NextViewController.swift
//  CWLateralSlide侧滑使用Demo
//
//  Created by Dxc_iOS on 2018/1/31.
//  Copyright © 2018年 代星创. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    var tableView:UITableView!
    var titles = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        tableView = UITableView.init(frame: view.bounds, style: .plain)
        view.addSubview(tableView)
        titles = ["dimiss界面","push界面","呵呵","呵呵","呵呵","呵呵"]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
//MARK:-->UITableViewDelegate, UITableViewDataSource
extension NextViewController: UITableViewDelegate, UITableViewDataSource {
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
            tableView.dequeueReusableCell(withIdentifier: "homecell", for: indexPath)
        
                cell.accessoryType = .disclosureIndicator
                cell.textLabel?.text = titles[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            self.dismiss(animated: true, completion: nil)
        default:
            self.navigationController?.pushViewController(NextViewController(), animated: true)
        }
        
    }
    
    
}

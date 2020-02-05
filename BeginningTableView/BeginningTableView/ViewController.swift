//
//  ViewController.swift
//  BeginningTableView
//
//  Created by Qian Meng on 2019/11/14.
//  Copyright © 2019 meng. All rights reserved.
//

import UIKit

class CheckListController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListItem", for: indexPath)
        if let label = cell.viewWithTag(1000) as? UILabel {
            label.text = "\(indexPath.row)"
        }
        return cell
    }


}


//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Qian Meng on 12/12/2017.
//  Copyright © 2017 Razeware. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController, UITextFieldDelegate {

  @IBOutlet weak var textField: UITextField!
  override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
      self.navigationItem.largeTitleDisplayMode = .never
    textField.delegate = self
    }
  override func viewWillAppear(_ animated: Bool) {
    textField.becomeFirstResponder()
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
  
  @IBAction func cancel() {
    self.navigationController?.popViewController(animated: true)
  }
  
  @IBAction func done() {
    self.navigationController?.popViewController(animated: true)
  }

}

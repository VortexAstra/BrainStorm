//
//  StudyViewController.swift
//  BrainStorm
//
//  Created by Артем Устинов on 13.04.2020.
//  Copyright © 2020 Артем Устинов. All rights reserved.
//

import UIKit

class StudyViewController: UIViewController {
    let idCell = "StudyCell"
  
  @IBOutlet weak var TableOfSomeItems: UITableView!
  
  
  override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
    TableOfSomeItems.dataSource = self
    TableOfSomeItems.delegate = self

        // Do any additional setup after loading the view.
    }
    
  
}
extension StudyViewController: UITableViewDataSource, UITableViewDelegate{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var cell = tableView.dequeueReusableCell(withIdentifier: idCell)
    if cell == nil{
      cell = UITableViewCell(style: .default, reuseIdentifier: idCell)
    }
    
    return cell!
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150
  }
  
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
     "Study"
   }

}


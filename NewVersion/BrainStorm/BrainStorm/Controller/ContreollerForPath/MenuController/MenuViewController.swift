//
//  MenuViewController.swift
//  BrainStorm
//
//  Created by Артем Устинов on 13.04.2020.
//  Copyright © 2020 Артем Устинов. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
  
  @IBAction func Back(_ sender: UIButton) {
    self.navigationController?.popViewController(animated: true)
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationController?.isNavigationBarHidden = true
    
    
    //         self.navigationController?.isNavigationBarHidden = false
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}

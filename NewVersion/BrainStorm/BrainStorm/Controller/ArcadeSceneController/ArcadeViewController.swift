//
//  ArcadeViewController.swift
//  BrainStorm
//
//  Created by Артем Устинов on 14.04.2020.
//  Copyright © 2020 Артем Устинов. All rights reserved.
//

import UIKit

class ArcadeViewController: UIViewController {
  
  private var ArcadeData = ["Concentration", "Puzzle", "PPP", "D", "E", "F", "G", ""]
  let idCell = "mainCell"
  @IBOutlet weak var TableWithArcadeGames: UITableView!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationController?.isNavigationBarHidden = false
    TableWithArcadeGames.dataSource = self
    TableWithArcadeGames.delegate = self
  
  }
  
}

extension ArcadeViewController: UITableViewDataSource, UITableViewDelegate{
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return ArcadeData.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var cell = tableView.dequeueReusableCell(withIdentifier: idCell)
    if cell == nil{
      cell = UITableViewCell(style: .default, reuseIdentifier: idCell)
    }
    
    switch indexPath.row {
      case 0:
        cell!.textLabel?.text = ArcadeData[indexPath.row]
      case 1:
        cell!.textLabel?.text = ArcadeData[indexPath.row]
      case 2:
        cell!.textLabel?.text = ArcadeData[indexPath.row]
      case 3:
        cell!.textLabel?.text = ArcadeData[indexPath.row]
      case 4:
        cell!.textLabel?.text = ArcadeData[indexPath.row]
      case 5:
        cell!.textLabel?.text = ArcadeData[indexPath.row]
      case 6:
        cell!.textLabel?.text = ArcadeData[indexPath.row]
      case 7:
        cell!.textLabel?.text = ArcadeData[indexPath.row]
      
      default:
        break
    }
    cell!.detailTextLabel?.text = "Arcade Game"
    return cell!
  }
  
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    "Arcade"
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    switch indexPath.row {
      case 0:
        let vc = storyboard?.instantiateViewController(withIdentifier: "ConcentrationBoard")
        self.navigationController?.pushViewController(vc!, animated: true)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
      case 1:
        print("Работает2х")
       
      default:
        break
    }
    
  }
}

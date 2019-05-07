//
//  ViewController.swift
//  TableView
//
//  Created by Admin on 4/28/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, optionDelegate {


    @IBOutlet weak var viewCheckOutBoder: UIView!
    @IBOutlet weak var myTable: UITableView!
    var anamefood: [String]!
    var amoney: [String]!
    var aimage: [String]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
        myTable.delegate = self
        
        anamefood = ["TeaFox", "Lipton", "Tocotoco", "Capuchino", "Matcha"]
        amoney = ["19.000", "25.000", "33.000", "57.000", "45.000" ]
        aimage = ["teafoc.png", "tealipton.png", "tocotoco.png", "teared.png", "matcha.png"]

        self.viewCheckOutBoder.backgroundColor = UIColor.orange
        self.viewCheckOutBoder.layer.cornerRadius = 25
        self.viewCheckOutBoder.clipsToBounds = true
        
        viewCheckOutBoder.layer.shadowColor = UIColor.black.cgColor
        viewCheckOutBoder.layer.shadowOpacity = 0.3
        viewCheckOutBoder.layer.shadowRadius = 1
        viewCheckOutBoder.layer.shadowOffset = CGSize(width: 0, height: 3)
        viewCheckOutBoder.layer.masksToBounds = false
//        viewCheckOutBoder.layer.shadowColor = UIColor.black.cgColor
//        viewCheckOutBoder.layer.shadowOffset = CGSize(width: 0, height: 3)
//        viewCheckOutBoder.layer.shadowOpacity = 0.5
       


    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL") as! classTableViewCell
        cell.imageItem.image = UIImage(named: aimage[indexPath.row])
        cell.lblNameFood.text = anamefood[indexPath.row]
        cell.lblMoney.text = amoney[indexPath.row]
        
        
        cell.lblklGram.text = String("1 kg")
        cell.imgMuse.image = UIImage(named: "truu.png")
        cell.lblNumBer.text = String("1")
        cell.imgPlus.image = UIImage(named: "conggg.png")
        cell.lblRemove.text = String("remove")
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 104
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        print(amoney[indexPath.row])
    }
    
    func dataDelegate(data: String) {
        print(amoney[0])
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "plus"{
            let sending: classTableViewCell = segue.destination as! classTableViewCell
            sending.delegate = self
        }
    }
}



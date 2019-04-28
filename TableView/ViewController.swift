//
//  ViewController.swift
//  TableView
//
//  Created by Admin on 4/28/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var viewCheckOutBoder: UIView!
    @IBOutlet weak var myTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
        myTable.delegate = self
        
        self.viewCheckOutBoder.backgroundColor = UIColor.orange
        self.viewCheckOutBoder.layer.cornerRadius = 25
        self.viewCheckOutBoder.clipsToBounds = true

        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL") as! classTableViewCell
     
        
        cell.imageItem.image = UIImage(named: "tea.jpg")
        cell.lblNameFood.text = String("Kiwi Apple")
        cell.lblMoney.text = String("$ 15.000")
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
}


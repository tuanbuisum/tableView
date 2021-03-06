//
//  classTableViewCell.swift
//  TableView
//
//  Created by Admin on 4/28/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

protocol optionDelegate {
    func dataDelegate(data: String )
}

class classTableViewCell: UITableViewCell  {

    var delegate: optionDelegate? = nil
    
    @IBOutlet weak var imageItem: UIImageView!
    
    
    @IBOutlet weak var lblNameFood: UILabel!
    @IBOutlet weak var lblklGram: UILabel!
    @IBOutlet weak var lblMoney: UILabel!

    @IBOutlet weak var viewBoder: UIView!
    @IBOutlet weak var imgMuse: UIImageView!
    @IBOutlet weak var lblNumBer: UILabel!
    @IBOutlet weak var imgPlus: UIImageView!
    
    @IBOutlet weak var lblRemove: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        let myColor = UIColor.orange
        viewBoder.layer.borderColor = myColor.cgColor
        viewBoder.layer.borderWidth = 3
        self.viewBoder.layer.cornerRadius = 32
        self.viewBoder.clipsToBounds = true
        
        lblNameFood.font = UIFont(name: "HelveticaNeue-Medium", size:20 )
        lblMoney.font = UIFont(name: "HelveticaNeue", size: 17)
        lblklGram.textColor = UIColor.gray
        //lblklGram.font = UIFont(name: "HelveticaNeue-Bold", size: 15) // khong nhan size
        lblklGram.font = UIFont(name: "HelveticaNeue", size: 15)
        // lblRemove.textColor = UIColor.init(red: 223, green: 76, blue: 83, alpha: 100) ko nhan mau
        lblNumBer.font = UIFont(name: "HelveticaNeue", size: 30)
        lblRemove.textColor = UIColor.red
        lblRemove.font = UIFont(name: "HelveticaNeue-Bold", size: 15)
        
    }
    
    @IBAction func btnMuse(_ sender: Any) {
        
        lblNumBer.text = String(Int(lblNumBer.text!)! - 1 )

        if lblNumBer.text == String(-1) {
            
            lblNumBer.text = String(Int(lblNumBer.text!)! + 1)
        }
    }
    
    @IBAction func btnPlus(_ sender: Any) {
        
        lblNumBer.text = String(Int(lblNumBer.text!)! + 1)
        
        if lblNumBer.text == String(10) {
            
            lblNumBer.text = String(Int(lblNumBer.text!)! - 1)

            }
        if delegate != nil{
            if lblNumBer.text != nil{
                let data = lblNumBer.text
                delegate?.dataDelegate(data: data!)
                
            }
        }

    }
    @IBAction func btnRemove(_ sender: Any) {
        
        lblNumBer.text = String("0")
        
    }
    
}

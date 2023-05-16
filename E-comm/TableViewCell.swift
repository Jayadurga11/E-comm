//
//  TableViewCell.swift
//  E-comm
//
//  Created by Rahul on 16/05/23.
//  Copyright © 2023 Rahul. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var shoeImg: UIImageView!
    
    
    @IBOutlet weak var shoeLabel: UILabel!
    
    
    @IBOutlet weak var shoeNum: UILabel!
    
    @IBOutlet weak var wishList: UIImageView!
    
    @IBOutlet weak var deleteLbl: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func stepper1(_ sender: UIStepper) {
        
        shoeNum.text = String (sender.value) 
        
        
    }
    

}

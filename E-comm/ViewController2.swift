//
//  ViewController2.swift
//  E-comm
//
//  Created by Rahul on 16/05/23.
//  Copyright © 2023 Rahul. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    
    @IBOutlet weak var shipToLbl: UILabel!
    
    @IBOutlet weak var addLbl: UILabel!
    
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var address1: UILabel!
    
    @IBOutlet weak var moblieNum1: UILabel!
    
    @IBOutlet weak var deleteicon1: UIImageView!
    
    @IBOutlet weak var nameLbl2: UILabel!
    
    @IBOutlet weak var address2: UILabel!
    
    @IBOutlet weak var moblieNum2: UILabel!
    
    @IBOutlet weak var deleteicon2: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func button1(_ sender: Any) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.present(viewController,animated: true,completion: nil)
        
        
    }
    
    
    @IBAction func editBtn1(_ sender: Any) {
    }
    
    @IBAction func editBtn2(_ sender: Any) {
    }
    
    @IBAction func nextBtn(_ sender: Any) {
    }
    
}

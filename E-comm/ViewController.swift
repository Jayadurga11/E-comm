//
//  ViewController.swift
//  E-comm
//
//  Created by Rahul on 16/05/23.
//  Copyright © 2023 Rahul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     var listShoe = [EcommData]()
     
    var cupon:[String] = ["3456XcvTh", "5467ADITay", "Xghyjv1126"]

    
    @IBOutlet weak var yourCartLbl: UILabel!
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var tableView1: UITableView!
    
    @IBOutlet weak var cuponTextfield: UITextField!
    
    @IBOutlet weak var stackView1: UIStackView!
    
    @IBOutlet var stackView2: UIView!
    
    
    @IBOutlet weak var itemLbl: UILabel!
    
    @IBOutlet weak var shippingLbl: UILabel!
    
    @IBOutlet weak var importChargersLbl: UILabel!
    
    @IBOutlet weak var totalPriceLbl: UILabel!
    
    
    @IBOutlet weak var price1: UILabel!
    
    
    @IBOutlet weak var price2: UILabel!
    
    @IBOutlet weak var price3: UILabel!
    
    
    @IBOutlet weak var price4: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
         
        let Shoe1 = EcommData(SImage: "Blackshoe", SDescription: "Nike Air Zoom Pegasus 36 Miami", SPrices: "$299,43")
               listShoe.append(Shoe1)
        
        let Shoe2 = EcommData(SImage: "Redshoe", SDescription: "Nike Air Zoom Pegasus 36 Miami", SPrices: "$299,43")
        listShoe.append(Shoe2)
               tableView1.tableFooterView=UIView(frame: .zero)
        
    }
    
    @IBAction func applyBtn(_ sender: Any) {
        
        if cupon.contains(cuponTextfield.text!){
            showAlert(message: "Your Cupon is Correct")
        
            
        }
        else{
            showAlert(message: "Your Cupon Is Not Correct")
        }
        
    }
    func showAlert(message: String)
    {
        let alert = UIAlertController(title: "Alert", message:
            message,preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK",
                                     style: .default)
        alert.addAction(okAction)
        self.present(alert, animated: true)
        
    }
    
    
    @IBAction func checkOutBtn(_ sender: Any) {
        
        
      let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController2 = storyBoard.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
    self.present(viewController2,animated: true,completion: nil)
        
    }
    
    
}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listShoe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView1.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.shoeLabel.text = listShoe[indexPath.row].ShoeDescription
        cell.shoeNum.text = listShoe[indexPath.row].ShoePrices
        cell.shoeImg.image = UIImage(named: listShoe[indexPath.row].ShoeImage)
        return cell
    }
    
    
}

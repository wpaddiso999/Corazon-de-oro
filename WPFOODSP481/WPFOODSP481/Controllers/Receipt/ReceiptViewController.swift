//
//  ReceiptViewController.swift
//  WPFOODSP481
//
//  Created by Rana Faheem on 3/4/24.
//

import UIKit

class ReceiptViewController: UIViewController {

    @IBOutlet weak var lblTotalPrice: UILabel!
    @IBOutlet weak var lblOrderNumber: UILabel!
    var cartItems = [ItemModel]()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()

        // Do any additional setup after loading the view.
    }
    
    func configureView(){
        self.tabBarController?.tabBar.isHidden = true
        self.lblOrderNumber.text = "Your order number is # \(Int.random(in: 20...999))"
        var totalAmount = 0.0
        for each in cartItems{
            let itemTotal = each.price * Double(each.quantity)
            totalAmount += itemTotal
        }
        self.lblTotalPrice.text = "Total price : \(totalAmount)"
    }
    
    @IBAction func actionBack(_ sender: Any) {
        self.tabBarController?.tabBar.isHidden = false
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension ReceiptViewController : UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartTableViewCell", for: indexPath) as! CartTableViewCell
        cell.configureReceptView(item: cartItems[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

//
//  CartViewController.swift
//  WPFOODSP481
//
//  Created by Rana Faheem on 3/2/24.
//

import UIKit

class CartViewController: UIViewController {

    @IBOutlet weak var btnCheckout: UIButton!
    @IBOutlet weak var tableView: UITableView!
    var cartItems = [ItemModel]()
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    override func viewWillAppear(_ animated: Bool) {
        self.cartItems = CartManager.shared.fetchCartItems()
        self.btnCheckout.isHidden = !(self.cartItems.count > 0)
        self.tableView.reloadData()
    }

    @IBAction func actionCheckout(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ReceiptViewController") as! ReceiptViewController
        vc.cartItems = self.cartItems
        self.navigationController?.pushViewController(vc, animated: true)
        CartManager.shared.clearCartItems()
    }
}

extension CartViewController : UITableViewDelegate , UITableViewDataSource , CartTableViewCellDelegate{
   
    func removeItemQuantity(cell: CartTableViewCell) {
        let alert = UIAlertController(title: "Remove Item", message: "Are you sure you want to remove this item from cart?", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { remove in
            let index = self.tableView.indexPath(for: cell)
            self.cartItems.remove(at: index!.row)
            self.tableView.deleteRows(at: [index!], with: .fade)
            CartManager.shared.deleteItemFromCart(index: index!.row)
            
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    func addItemQuantity(cell: CartTableViewCell) {
        let index = self.tableView.indexPath(for: cell)
        self.cartItems[index!.row].quantity = self.cartItems[index!.row].quantity + 1
        self.tableView.reloadRows(at: [index!], with: .none)
        CartManager.shared.updateItemInCart(item: self.cartItems[index!.row], index: index!.row)
    }
    
    func minusItemQuantity(cell: CartTableViewCell) {
        let index = self.tableView.indexPath(for: cell)
        if self.cartItems[index!.row].quantity > 1{
            self.cartItems[index!.row].quantity = self.cartItems[index!.row].quantity - 1
            CartManager.shared.updateItemInCart(item: self.cartItems[index!.row], index: index!.row)
            self.tableView.reloadRows(at: [index!], with: .none)
        }
    }
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartTableViewCell", for: indexPath) as! CartTableViewCell
        cell.delegate = self
        cell.configureView(item: cartItems[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    
}

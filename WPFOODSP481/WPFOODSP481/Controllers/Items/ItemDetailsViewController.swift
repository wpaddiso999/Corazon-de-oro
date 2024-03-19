//
//  ItemDetailsViewController.swift
//  WPFOODSP481
//
//  Created by Rana Faheem on 3/2/24.
//

import UIKit

class ItemDetailsViewController: UIViewController {
  
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var item = ItemModel()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()

        // Do any additional setup after loading the view.
    }
    
    func configureView(){
        self.lblName.text = self.item.name
        self.lblPrice.text = "Price: \(self.item.price)"
        self.img.image = UIImage(named: self.item.image)
        self.lblDescription.text = "DESCRIPTION:  \(self.item.description)"
    }
    
    func showAlertView(message : String){
        let alert = UIAlertController(title: "Cart", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func actionAddToCart(_ sender: Any) {
        let isItemAdded = CartManager.shared.addItemToCart(item: self.item)
        if isItemAdded{
            self.showAlertView(message: "Item added to cart.")
        }
        else{
            self.showAlertView(message: "Item already in cart.")
        }
    }
    
    @IBAction func actionBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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

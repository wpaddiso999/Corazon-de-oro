//
//  CartTableViewCell.swift
//  WPFOODSP481
//
//  Created by Rana Faheem on 3/2/24.
//

import UIKit

protocol CartTableViewCellDelegate : AnyObject{
    func addItemQuantity(cell : CartTableViewCell)
    func minusItemQuantity(cell : CartTableViewCell)
    func removeItemQuantity(cell : CartTableViewCell)
}

class CartTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTotalPrice: UILabel!
    @IBOutlet weak var lblQuantity: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    weak var delegate : CartTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureView(item : ItemModel){
        self.lblName.text = item.name
        self.lblPrice.text = "Price: \(item.price)"
        self.lblTotalPrice.text = "Total Price: \(item.price * Double(item.quantity))"
        self.img.image = UIImage(named: item.image)
        self.lblQuantity.text = "\(item.quantity)"
    }
    
    func configureReceptView(item : ItemModel){
        self.lblName.text = item.name
        self.lblPrice.text = "Price: \(item.price) x \(item.quantity)"
        self.lblTotalPrice.text = "Total Price: \(item.price * Double(item.quantity))"
        self.img.image = UIImage(named: item.image)
    }

    @IBAction func actionRemoveItem(_ sender: Any) {
        delegate?.removeItemQuantity(cell: self)
    }
   
    @IBAction func actionMinus(_ sender: Any) {
        delegate?.minusItemQuantity(cell: self)
    }
   
    @IBAction func actionPlus(_ sender: Any) {
        delegate?.addItemQuantity(cell: self)
    }
}

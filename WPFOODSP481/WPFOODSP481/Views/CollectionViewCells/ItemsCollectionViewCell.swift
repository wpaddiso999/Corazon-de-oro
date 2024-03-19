//
//  ItemsCollectionViewCell.swift
//  WPFOODSP481
//
//  Created by Rana Faheem on 3/2/24.
//

import UIKit

class ItemsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgItem: UIImageView!
    
    func configureItem(item : ItemModel){
        self.lblName.text = item.name
        self.lblPrice.text = "Price: \(item.price)"
        self.imgItem.image = UIImage(named: item.image)
    }
}

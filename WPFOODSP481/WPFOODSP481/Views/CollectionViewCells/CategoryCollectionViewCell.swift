//
//  CategoryCollectionViewCell.swift
//  WPFOODSP481
//
//  Created by MacBook Pro on 2/20/24.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var viewBack: UIView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgCategory: UIImageView!
    
    func configureView(category : CategoryModel){
        self.lblName.text = category.name
        self.imgCategory.image = UIImage(named: category.image)
    }
}

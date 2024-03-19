//
//  ItemModel.swift
//  WPFOODSP481
//
//  Created by Rana Faheem on 3/2/24.
//

import Foundation


class ItemModel : Codable{
    var name : String = ""
    var price : Double = 0.0
    var quantity : Int = 1
    var image : String = ""
    var description : String = ""
    
    init(){
        self.name = ""
        self.price = 0.0
        self.quantity = 1
        self.image = ""
        self.description = ""
    }
    
    convenience init(name: String, price: Double, quantity: Int = 1 , image : String , description : String) {
        self.init()
        self.name = name
        self.price = price
        self.quantity = quantity
        self.image = image
        self.description = description
    }
}

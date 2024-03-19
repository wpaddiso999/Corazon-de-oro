//
//  CartManager.swift
//  WPFOODSP481
//
//  Created by Rana Faheem on 3/2/24.
//

import Foundation

class CartManager {
    static let shared = CartManager()
    private let userDefaults = UserDefaults.standard
    private let key = "Cart"
 
    func saveCartItems(_ objects: [ItemModel]){
        do {
            let encodedData = try JSONEncoder().encode(objects)
            userDefaults.set(encodedData, forKey: key)
        } catch {
            print("Error")
        }
    }

    func fetchCartItems() -> [ItemModel] {
        guard let encodedData = userDefaults.data(forKey: key) else { return [] }
        do {
            let objects = try JSONDecoder().decode([ItemModel].self, from: encodedData)
            return objects
        } catch {
            print("Error")
            return []
        }
    }
    
    func clearCartItems(){
        userDefaults.removeObject(forKey: key)
    }
    
    
    func addItemToCart(item : ItemModel) -> Bool{
        var cartItems = fetchCartItems()
        if cartItems.count > 0{
            let isItemAdded = cartItems.contains(where: {$0.name == item.name})
            if isItemAdded{
                return false
            }
        }
        cartItems.append(item)
        self.saveCartItems(cartItems)
        return true
    }
    
    func updateItemInCart(item : ItemModel , index : Int){
        var cartItems = fetchCartItems()
        if cartItems.count > 0{
            cartItems[index] = item
            self.saveCartItems(cartItems)
        }
    }
    
    func deleteItemFromCart(index : Int){
        var cartItems = fetchCartItems()
        if cartItems.count > 0{
            cartItems.remove(at: index)
            self.saveCartItems(cartItems)
        }
    }
}


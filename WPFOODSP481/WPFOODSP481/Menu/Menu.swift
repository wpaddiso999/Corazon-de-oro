//
//  Menu.swift
//  WPFOODSP481
//
//  Created by Rana Faheem on 3/2/24.
//

import Foundation

class Menu {
    
    static let shared = Menu()
    
    var categories = ["STARTER","BURGERS","SANDWHICHES & ENTREES", "DESSERT", "DRINKS"]
    
    func getMenu() -> [CategoryModel]{
        var categories = [CategoryModel]()
       
        var startItems = [ItemModel]()
        startItems.append(ItemModel(name: "HOUSE CHILI", price: 8.00, image: "STARTER", description: "No details"))
        startItems.append(ItemModel(name: "SOUP OF THE DAY", price: 8.00, image: "STARTER", description: "No details"))
        startItems.append(ItemModel(name: "WILLIAMS SEASONED FRIES", price: 5.50, image: "STARTER", description: "No details"))
        startItems.append(ItemModel(name: "WISCONSON CHEESE CURDS", price: 9.25, image: "STARTER", description: "No details"))
        startItems.append(ItemModel(name: "PRETZEL BITES", price: 8.25, image: "STARTER", description: "No details"))
        startItems.append(ItemModel(name: "HOUSE SALAD (FRIES +1.50)", price: 6.25, image: "STARTER", description: "No details"))
        let starter = CategoryModel(name: "STARTER", image: "STARTER", items: startItems)
       
        
        var burgersItems = [ItemModel]()
        burgersItems.append(ItemModel(name: "CLASSIC CHEESEBURGER", price: 12.00, image: "BURGERS", description: "A TIMELESS FAVORITE, THIS BURGER FEATURES A JUICY BEEF PATTY COOKED TO PERFECTION, TOPPED WITH A SLICE OFMELTED AMERICAN CHEESE. SERVED ON A FRESH, TOASTED SESAME SEED BUN WITH CRISP LETTUCE, RIPE TOMATOES, PICKLES, AND A  DOLLOP OF CREAMY MAYONNAISE OR TANGY KETCHUP."))
        burgersItems.append(ItemModel(name: "BACON BBQ BURGER", price: 14.50, image: "BURGERS", description: "A SMOKY AND SAVORY DELIGHT, THIS BURGER SHOWCASES A SUCCULENT BEEF PATTY PAIRED WITH CRISPY BACON STRIPS. IT'S GENEROUSLY SMOTHERED IN TANGY BARBECUE SAUCE, LAYERED WITH CHEDDAR CHEESE, AND TOPPED WITH CRISPY FRIED ONION RINGS FOR A SATISFYING CRUNCH. ALL SERVED ON A HEARTY, TOASTED BRIOCHE BUN."))
        burgersItems.append(ItemModel(name: "MUSHROOM SWISS BURGER", price: 14.50, image: "BURGERS", description: "A GOURMET CHOICE FOR MUSHROOM LOVERS, THIS BURGER FEATURES A TENDER BEEF PATTY ADORNED WITH SAUTÉED MUSHROOMS AND DRAPED IN RICH, MELTED SWISS CHEESE. IT'S SERVED ON A SOFT, BUTTERED PRETZEL BUN WITH A DRIZZLE OF SAVORY MUSHROOM SAUCE, CREATING A DELIGHTFUL UMAMI EXPERIENCE."))
        burgersItems.append(ItemModel(name: "SPICY JALEPENO BURGER", price: 14.50, image: "BURGERS", description: "FOR THOSE WHO CRAVE HEAT, THIS BURGER FEATURES A FIERY KICK. IT INCLUDES A JUICY BEEF OR PLANT-BASED PATTY, TOPPED WITH PEPPER JACK CHEESE AND PILED HIGH WITH PICKLED JALAPEÑO SLICES. IT'S SERVED WITH A ZESTY CHIPOTLE MAYO ON A SOFT JALAPEÑO CHEDDAR BUN, PROVIDING A BOLD AND SPICY FLAVOR EXPLOSION."))
        burgersItems.append(ItemModel(name: "VEGETARIAN PORTEBELLO BURGER", price: 15.50, image: "BURGERS", description: "A DELICIOUS MEATLESS OPTION, THIS BURGER BOASTS A GRILLED PORTOBELLO MUSHROOM CAP MARINATED IN A ZESTY BALSAMIC VINAIGRETTE. IT'S LAYERED WITH ROASTED RED PEPPERS, FRESH SPINACH, AND CREAMY GOAT CHEESE ON A WHOLE-GRAIN CIABATTA ROLL, OFFERING A HEARTY AND SATISFYING VEGETARIAN ALTERNATIVE."))
        let burguers = CategoryModel(name: "BURGERS", image: "BURGERS", items: burgersItems)
       
        
        var sanwichesItems = [ItemModel]()
        sanwichesItems.append(ItemModel(name: "FISH AND CHIPS SANDWHICH", price: 13.50, image: "SANDWHICHES & ENTREES", description: "INDULGE IN THE ULTIMATE SEAFOOD DELIGHT WITH OUR FISH AND CHIPS SANDWICH. THIS DELECTABLE CREATION COMBINES THE BEST OF TRADITIONAL FISH AND CHIPS WITH THE CONVENIENCE OF A HANDHELD DELIGHT."))
        sanwichesItems.append(ItemModel(name: "PITTSBURGH RUEBEN SANDWHICH", price: 14.00, image: "SANDWHICHES & ENTREES", description: "DISCOVER THE FLAVORFUL UNION OF TWO CULINARY CLASSICS IN OUR PITTSBURGH REUBEN SANDWICH FUSION, A MOUTHWATERING TRIBUTE TO THE STEEL CITY'S RICH HERITAGE AND THE ICONIC REUBEN SANDWICH."))
        sanwichesItems.append(ItemModel(name: "FRIED CHICKEN SANDWHICH", price: 13.50, image: "SANDWHICHES & ENTREES", description: "PREPARE TO EMBARK ON A CULINARY JOURNEY WITH OUR BEER-BATTERED FRIED CHICKEN SANDWICH, A MOUTHWATERING MASTERPIECE THAT COMBINES CRISPY, GOLDEN PERFECTION WITH IRRESISTIBLE FLAVORS."))
        sanwichesItems.append(ItemModel(name: "FISH AND CHIPS", price: 13.50, image: "SANDWHICHES & ENTREES", description: "UR FISH, FRESHLY CAUGHT AND EXPERTLY PREPARED, IS THE STAR OF THE SHOW. IT'S DELICATELY ENCASED IN A GOLDEN, CRUNCHY BATTER THAT CRACKLES WITH EVERY BITE. THE RESULT IS A HARMONIOUS BLEND OF TENDER, FLAKY FISH ON THE INSIDE AND A SATISFYING, CRISPY EXTERIOR."))
        sanwichesItems.append(ItemModel(name: "CHICKEN BASKET", price: 13.50, image: "SANDWHICHES & ENTREES", description: "AT THE HEART OF THIS BASKET IS A GENEROUS SERVING OF SUCCULENT CHICKEN PIECES, EACH ENCASED IN A LUSCIOUS BEER-INFUSED BATTER. THE BEER LENDS A DISTINCTIVE CRUNCH, TRANSFORMING EACH BITE INTO A SYMPHONY OF TEXTURES - A CRISPY, GOLDEN EXTERIOR THAT GIVES WAY TO THE TENDER AND FLAVORFUL CHICKEN WITHIN."))
       let sandwiches = CategoryModel(name: "SANDWHICHES & ENTREES", image: "SANDWHICHES & ENTREES", items: sanwichesItems)
        
        
        var dessertItems = [ItemModel]()
        dessertItems.append(ItemModel(name: "CHOCOLATE CAKE", price: 7.45, image: "DESSERT", description: "No details"))
        dessertItems.append(ItemModel(name: "SEASONAL CHEESECAKE", price: 7.45, image: "DESSERT", description: "No details"))
        dessertItems.append(ItemModel(name: "VANILLA SOFT SERVE", price: 7.45, image: "DESSERT", description: "No details"))
        dessertItems.append(ItemModel(name: "CHOCOLATE SOFT SERVE", price: 7.45, image: "DESSERT", description: "No details"))
        let desserts = CategoryModel(name: "DESSERT", image: "DESSERT", items: dessertItems)
        
        var drinkItems = [ItemModel]()
        drinkItems.append(ItemModel(name: "SPARKLING WATER", price: 4.50, image: "DRINKS", description: "No details"))
        drinkItems.append(ItemModel(name: "SODA", price: 2.50, image: "DRINKS", description: "No details"))
        drinkItems.append(ItemModel(name: "COFFEE", price: 3.50, image: "DRINKS", description: "No details"))
        let drinks = CategoryModel(name: "DRINKS", image: "DRINKS", items: drinkItems)
        
        
        var wineItems = [ItemModel]()
        wineItems.append(ItemModel(name: "HOUSE RED", price: 8.00, image: "WINE", description: "No details"))
        wineItems.append(ItemModel(name: "HOUSE WHITE", price: 9.00, image: "WINE", description: "No details"))
        let wines = CategoryModel(name: "WINE", image: "WINE", items: wineItems)
        
        
        var cocktailItems = [ItemModel]()
        cocktailItems.append(ItemModel(name: "LIBERTY WHISKEY MULE", price: 11.00, image: "HOUSE COCKTAILS", description: "EXPERIENCE THE TRUE SPIRIT OF PITTSBURGH WITH OUR EXCLUSIVE LIBERTY POLE WHISKEY MULE. CRAFTED WITH LOCAL PRIDE, THIS CLASSIC COCKTAIL TAKES ON A WHOLE NEW DIMENSION WHEN MADE WITH LIBERTY POLE WHISKEY, A GEM FROM OUR CITY'S DISTILLING TRADITION."))
        cocktailItems.append(ItemModel(name: "SANGRIA SUNRISE", price: 13.00, image: "HOUSE COCKTAILS", description: "THE SANGRIA SUNRISE IS A COCKTAIL MASTERPIECE THAT BEAUTIFULLY BLENDS THE VIBRANT FLAVORS OF CASAMIGOS TEQUILA, ZESTY LEMON-LIME GOODNESS, AND A MESMERIZING RED WINE FLOAT. THIS DELIGHTFUL LIBATION IS A TOAST TO BOTH CLASSIC COCKTAILS AND MODERN MIXOLOGY."))
        cocktailItems.append(ItemModel(name: "STEEL CITY CLASSIC ELIXER", price: 11.00, image: "HOUSE COCKTAILS", description: "THE PITTSBURGH REBEL RYE OLD FASHIONED IS A TIMELESS CLASSIC REINVENTED WITH A MODERN TWIST. CRAFTED WITH REBELLION RYE, A TRIBUTE TO PITTSBURGH'S REBELLIOUS SPIRIT, THIS COCKTAIL CELEBRATES THE STEEL CITY'S RICH HERITAGE AND ITS PASSION FOR BOLD FLAVORS."))
        
        let cocktails = CategoryModel(name: "HOUSE COCKTAILS", image: "HOUSE COCKTAILS", items: cocktailItems)
        
        
        var cansItems = [ItemModel]()
        cansItems.append(ItemModel(name: "BUDWEISER", price: 4.00, image: "BOTTLES AND CANS", description: "No details"))
        cansItems.append(ItemModel(name: "BUD-LIGHT", price: 4.00, image: "BOTTLES AND CANS", description: "No details"))
        cansItems.append(ItemModel(name: "MILLER LIGHT", price: 4.00, image: "BOTTLES AND CANS", description: "No details"))
        cansItems.append(ItemModel(name: "MICHELOB ULTRA", price: 4.00, image: "BOTTLES AND CANS", description: "No details"))
        cansItems.append(ItemModel(name: "MODELO", price: 5.00, image: "BOTTLES AND CANS", description: "No details"))
        cansItems.append(ItemModel(name: "CARONA", price: 4.00, image: "BOTTLES AND CANS", description: "No details"))
        cansItems.append(ItemModel(name: "ANGRY ORCHARD", price: 5.00, image: "BOTTLES AND CANS", description: "No details"))
        cansItems.append(ItemModel(name: "MOLSEN", price: 5.00, image: "BOTTLES AND CANS", description: "No details"))
        cansItems.append(ItemModel(name: "WHITE CLAW", price: 6.00, image: "BOTTLES AND CANS", description: "No details"))
        cansItems.append(ItemModel(name: "PBR", price: 2.00, image: "BOTTLES AND CANS", description: "No details"))
        cansItems.append(ItemModel(name: "ROLLING ROCK", price: 2.00, image: "BOTTLES AND CANS", description: "No details"))
        let cans = CategoryModel(name: "BOTTLES AND CANS", image: "BOTTLES AND CANS", items: cansItems)
        
        
        categories.append(starter)
        categories.append(burguers)
        categories.append(sandwiches)
        categories.append(desserts)
        categories.append(drinks)
        categories.append(wines)
        categories.append(cocktails)
        categories.append(cans)
        return categories
        
       
      
       
        
        
    }
    
    
    
    
    
}



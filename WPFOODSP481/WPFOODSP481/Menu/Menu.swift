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
        startItems.append(ItemModel(name: "HOUSE CHILI", price: 8.00, image: "STARTER", description: ""))
        startItems.append(ItemModel(name: "SOUP OF THE DAY", price: 8.00, image: "STARTER", description: ""))
        startItems.append(ItemModel(name: "WILLIAMS SEASONED FRIES", price: 5.50, image: "STARTER", description: ""))
        startItems.append(ItemModel(name: "WISCONSON CHEESE CURDS", price: 9.25, image: "STARTER", description: ""))
        startItems.append(ItemModel(name: "PRETZEL BITES", price: 8.25, image: "STARTER", description: ""))
        startItems.append(ItemModel(name: "HOUSE SALAD (FRIES +1.50)", price: 6.25, image: "STARTER", description: ""))
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
        dessertItems.append(ItemModel(name: "CHOCOLATE CAKE", price: 7.45, image: "DESSERT", description: ""))
        dessertItems.append(ItemModel(name: "SEASONAL CHEESECAKE", price: 7.45, image: "DESSERT", description: ""))
        dessertItems.append(ItemModel(name: "VANILLA SOFT SERVE", price: 7.45, image: "DESSERT", description: ""))
        dessertItems.append(ItemModel(name: "CHOCOLATE SOFT SERVE", price: 7.45, image: "DESSERT", description: ""))
        let desserts = CategoryModel(name: "DESSERT", image: "DESSERT", items: dessertItems)
        
        var drinkItems = [ItemModel]()
        drinkItems.append(ItemModel(name: "SPARKLING WATER", price: 4.50, image: "DRINKS", description: "La Croix"))
        drinkItems.append(ItemModel(name: "SODA", price: 2.50, image: "DRINKS", description: "Coke products specify at pickup"))
        drinkItems.append(ItemModel(name: "COFFEE", price: 3.50, image: "DRINKS", description: "Black Ask For Sugar and Cream "))
        let drinks = CategoryModel(name: "DRINKS", image: "DRINKS", items: drinkItems)
        
        
        var wineItems = [ItemModel]()
        wineItems.append(ItemModel(name: "HOUSE RED", price: 8.00, image: "WINE", description: "From the vineyards of Paso Robles, our reserve cabernet is of the highest tier, exemplifying qualities of one of the best red wine making regions in the world. This Cabernet is smooth and rich on the palate, with flavors of blackberry and toasted oak that lead to a long-lasting finish with hints of vanilla and baking spices."))
        wineItems.append(ItemModel(name: "HOUSE WHITE", price: 9.00, image: "WINE", description: "Native to Italy, Pinot Grigio grapes are typically harvested before fully ripe. Offering a clean, light, mild and refreshing palate, the texture is soft, easy to drink and often features vaguely, fruity, apple like aromas. Often described as great “background music” when paired with food."))
        let wines = CategoryModel(name: "WINE", image: "WINE", items: wineItems)
        
        
        var cocktailItems = [ItemModel]()
        cocktailItems.append(ItemModel(name: "LIBERTY WHISKEY MULE", price: 11.00, image: "HOUSE COCKTAILS", description: "EXPERIENCE THE TRUE SPIRIT OF PITTSBURGH WITH OUR EXCLUSIVE LIBERTY POLE WHISKEY MULE. CRAFTED WITH LOCAL PRIDE, THIS CLASSIC COCKTAIL TAKES ON A WHOLE NEW DIMENSION WHEN MADE WITH LIBERTY POLE WHISKEY, A GEM FROM OUR CITY'S DISTILLING TRADITION."))
        cocktailItems.append(ItemModel(name: "SANGRIA SUNRISE", price: 13.00, image: "HOUSE COCKTAILS", description: "THE SANGRIA SUNRISE IS A COCKTAIL MASTERPIECE THAT BEAUTIFULLY BLENDS THE VIBRANT FLAVORS OF CASAMIGOS TEQUILA, ZESTY LEMON-LIME GOODNESS, AND A MESMERIZING RED WINE FLOAT. THIS DELIGHTFUL LIBATION IS A TOAST TO BOTH CLASSIC COCKTAILS AND MODERN MIXOLOGY."))
        cocktailItems.append(ItemModel(name: "STEEL CITY CLASSIC ELIXER", price: 11.00, image: "HOUSE COCKTAILS", description: "THE PITTSBURGH REBEL RYE OLD FASHIONED IS A TIMELESS CLASSIC REINVENTED WITH A MODERN TWIST. CRAFTED WITH REBELLION RYE, A TRIBUTE TO PITTSBURGH'S REBELLIOUS SPIRIT, THIS COCKTAIL CELEBRATES THE STEEL CITY'S RICH HERITAGE AND ITS PASSION FOR BOLD FLAVORS."))
        
        let cocktails = CategoryModel(name: "HOUSE COCKTAILS", image: "HOUSE COCKTAILS", items: cocktailItems)
        
        
        var cansItems = [ItemModel]()
        cansItems.append(ItemModel(name: "BUDWEISER", price: 4.00, image: "BOTTLES AND CANS", description: "Budweiser is an iconic American lager known for its crisp and refreshing taste. Brewed since 1876, it boasts a rich heritage and widespread popularity. Characterized by its golden color and smooth finish, Budweiser is crafted using high-quality barley malt, rice, hops, and a unique yeast strain. It's often enjoyed as a go-to choice for social gatherings and sporting events, offering a familiar and satisfying drinking experience. With its distinctive red label and memorable Clydesdale horses in advertising campaigns, Budweiser has become synonymous with American beer culture."))
        cansItems.append(ItemModel(name: "BUD-LIGHT", price: 4.00, image: "BOTTLES AND CANS", description: "Bud Light is a widely recognized and popular light beer produced by Anheuser-Busch. Renowned for its crisp, clean taste and lower calorie content compared to regular beers, Bud Light appeals to a wide range of consumers seeking a lighter beer option. Brewed using high-quality barley malt, rice, hops, and a special yeast strain, it delivers a refreshing drinking experience. With its pale golden color and subtle malt sweetness, Bud Light is often enjoyed during social gatherings, parties, and sporting events. Recognizable by its blue labeling and often accompanied by humorous advertising campaigns, Bud Light has become a staple in the world of light beers, offering a balanced and refreshing choice for beer enthusiasts."))
        cansItems.append(ItemModel(name: "MILLER LIGHT", price: 4.00, image: "BOTTLES AND CANS", description: "Miller Lite is a renowned American light beer celebrated for its crisp and refreshing taste. Introduced in 1975 by the Miller Brewing Company, it quickly gained popularity for its lower calorie and carbohydrate content compared to traditional beers. Brewed using high-quality malted barley, corn syrup, hops, and water, Miller Lite offers a smooth and balanced flavor profile with a hint of hops bitterness. Its pale golden hue and light body make it a go-to choice for those seeking a lighter beer option without compromising on taste. Often enjoyed during social gatherings, barbecues, and sporting events, Miller Lite has become a beloved staple in the world of light beers, offering a satisfying and refreshing drinking experience."))
        cansItems.append(ItemModel(name: "MICHELOB ULTRA", price: 4.00, image: "BOTTLES AND CANS", description: "Michelob Ultra is a premium light beer renowned for its exceptionally smooth and light taste. Introduced by Anheuser-Busch in 2002, it quickly gained popularity among health-conscious consumers seeking a lower calorie and carbohydrate option. Brewed with high-quality barley malt, select grains, hops, and a special yeast strain, Michelob Ultra delivers a crisp and clean flavor with subtle citrus notes. Its pale golden color and refreshing character make it a preferred choice for those looking to maintain an active lifestyle without sacrificing on taste. Michelob Ultra is often enjoyed by fitness enthusiasts, golfers, and those seeking a balanced and refreshing beer option, offering a satisfying drinking experience with fewer calories and carbohydrates."))
        cansItems.append(ItemModel(name: "MODELO", price: 5.00, image: "BOTTLES AND CANS", description: "Modelo Especial is a distinguished Mexican lager revered for its rich flavor and smooth character. Brewed by Grupo Modelo, it embodies the essence of Mexican beer craftsmanship. With a deep golden hue and a balanced blend of malt sweetness and hops bitterness, Modelo Especial offers a satisfying drinking experience. It is crafted using high-quality ingredients including malted barley, hops, yeast, and water, resulting in a crisp and refreshing taste. Often enjoyed with lime or as part of a refreshing Michelada cocktail, Modelo Especial is a favorite choice for gatherings and celebrations, symbolizing the vibrant spirit of Mexico in every sip."))
        cansItems.append(ItemModel(name: "CARONA", price: 4.00, image: "BOTTLES AND CANS", description: "Corona Extra is a globally recognized Mexican beer known for its iconic clear bottle, refreshing taste, and laid-back vibe. Brewed by Grupo Modelo, it has been a staple of beach parties, barbecues, and gatherings worldwide since its introduction in 1925. With its pale golden color and light body, Corona Extra offers a crisp and smooth drinking experience, complemented by a subtle balance of malt sweetness and hops bitterness. It is often served with a wedge of lime to enhance its refreshing citrus notes and add a touch of flavor. Embodying the essence of leisure and relaxation, Corona Extra is enjoyed by millions as a symbol of carefree enjoyment and good times shared with friends."))
        cansItems.append(ItemModel(name: "ANGRY ORCHARD", price: 5.00, image: "BOTTLES AND CANS", description: "Angry Orchard is a well-known brand of hard cider that has gained popularity for its crisp and flavorful beverages. Crafted by the Boston Beer Company, it offers a refreshing alternative to beer and other alcoholic beverages. Angry Orchard ciders are made from a blend of apples, carefully selected for their distinct flavors and qualities, resulting in a range of delicious and aromatic options. Whether it's their classic Crisp Apple, the slightly tart Green Apple, or their seasonal varieties, Angry Orchard ciders are characterized by their balanced sweetness, subtle tartness, and refreshing carbonation. With a wide range of flavors and styles to choose from, Angry Orchard has become a favorite choice for cider enthusiasts and those looking for a refreshing and flavorful beverage option."))
        cansItems.append(ItemModel(name: "MOLSEN", price: 5.00, image: "BOTTLES AND CANS", description: "Molson Canadian is a renowned Canadian beer brand with a rich heritage dating back to 1786, making it one of the oldest breweries in North America. Brewed by Molson Coors Beverage Company, it is celebrated for its crisp and clean taste, embodying the essence of Canadian brewing tradition. Molson Canadian is crafted using the finest Canadian barley malt, specially selected hops, yeast, and pure water from pristine Canadian sources, resulting in a premium quality beer. With its golden color and balanced flavor profile featuring subtle malt sweetness and a hint of hops bitterness, Molson Canadian offers a refreshing drinking experience. It is a favorite choice for Canadians and beer enthusiasts worldwide, symbolizing the proud brewing legacy and national identity of Canada."))
        cansItems.append(ItemModel(name: "WHITE CLAW", price: 6.00, image: "BOTTLES AND CANS", description: "White Claw is a popular brand of hard seltzer known for its refreshing and crisp flavors. Brewed by Mark Anthony Brands, it has surged in popularity for its low calorie, gluten-free, and low carb beverage options. White Claw offers a variety of flavors such as Black Cherry, Mango, and Natural Lime, each delivering a light and fruity taste with a hint of carbonation. Made with purified carbonated water, alcohol derived from fermented sugars, and natural flavors, White Claw provides a clean and refreshing alternative to traditional beer and cocktails. Its convenient canned packaging and wide availability make it a favorite choice for outdoor activities, social gatherings, and those seeking a lighter, more refreshing drink option."))
        cansItems.append(ItemModel(name: "PBR", price: 2.00, image: "BOTTLES AND CANS", description: "Pabst Blue Ribbon (PBR) is an iconic American lager that has garnered a cult following for its no-frills appeal and nostalgic charm. Brewed by Pabst Brewing Company, it boasts a history dating back to 1844, making it one of the oldest beer brands in the United States. PBR is characterized by its light body, mild hop bitterness, and crisp finish, making it a refreshing choice for beer enthusiasts. With its distinctive blue ribbon logo adorning its simple can or bottle, Pabst Blue Ribbon has become a symbol of authenticity and independent spirit. It has enjoyed a resurgence in popularity in recent years, particularly among younger drinkers drawn to its retro aesthetic and straightforward taste. PBR remains a beloved classic in the American beer landscape, cherished for its timeless appeal and uncomplicated character."))
        cansItems.append(ItemModel(name: "ROLLING ROCK", price: 2.00, image: "BOTTLES AND CANS", description: "Rolling Rock is a distinctive American pale lager renowned for its unique green bottle and smooth, crisp taste. Brewed by the Latrobe Brewing Company in Pennsylvania, it has been a beloved beer brand since its inception in 1939. Rolling Rock is characterized by its pale golden color, light body, and subtle hop bitterness, offering a refreshing and easy-drinking experience. With its clean and slightly sweet flavor profile, it has become a popular choice for casual gatherings and outdoor events. Rolling Rock's iconic packaging and longstanding presence in the beer market have solidified its status as a cherished classic among beer enthusiasts, embodying the laid-back spirit of American brewing tradition."))
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



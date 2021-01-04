import Foundation

class Product: Identifiable{
    var name: String
    var price: String
    var image: String
    
    init(name: String, image: String, price: String) {
        self.image = image
        self.price = price
        self.name = name
    }
    
    static func initProducts()->[Product]{
        return [Product(name: "Milk", image: "mi", price: "1.99"),
                Product(name: "Meat", image: "m", price: "2.59"),
                Product(name: "Bread", image: "b", price: "0.99"),
                Product(name: "Coca-Cola", image: "c", price: "1.09")]
    }
}

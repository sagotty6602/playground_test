import UIKit

class Product {
    internal var productName: String
    internal var productType: ProductType
    internal var productPrice: Double
    internal var amount: Int
    private static var totalAmount: Int = 0
    
    enum ProductType {
        case Water
        case Food
    }
    
    init(productName: String, productType: ProductType, productPrice: Double, amount: Int) {
        self.productName = productName
        self.productType = productType
        self.productPrice = productPrice
        self.amount = amount
        Product.totalAmount += self.amount
    }
    
    func showProduct() {
        print("ชื่อ \(self.productName) \(self.productType) \(String(format: "%.2f",(self.productPrice))) \(self.amount)")
    }
    
    func buyProduct(buyAmount: Int) -> Double {
        var sumPrice: Double
        if buyAmount > self.amount {
            sumPrice = self.productPrice * Double(self.amount)
            self.amount = 0
            Product.totalAmount -= self.amount
        } else {
            sumPrice = self.productPrice * Double(buyAmount)
            self.amount = self.amount - buyAmount
            Product.totalAmount -= buyAmount
        }
        return sumPrice
    }
    
    func setStock(amount: Int) {
        self.amount += amount
        Product.totalAmount += amount
    }
    
    func setPrice(price: Double) {
        self.productPrice = price
    }
    
    func getAmount() -> Int {
        return self.amount
    }
    
    func getPrice() -> Double {
        return self.productPrice
    }
    
    func changeName(name: String) {
        self.productName = name
    }
    
    func getTotalAmount() -> Int {
        return Product.totalAmount
    }
}

class Food: Product {
    enum FoodType {
        case AnimalsFood
        case HumanFood
        case PlantFood
    }
    
    private var foodType: FoodType
    
//    convenience init(food: FoodType) {
//        self.init(productName: productName, productType: productType, productPrice: productPrice, amount: amount)
//        self.food = FoodType
//
//    }
    
    
    init(productName: String, productType: ProductType, productPrice: Double, amount: Int, foodtype: FoodType) {
        self.foodType = foodtype
        super.init(productName: productName, productType: .Food, productPrice: productPrice, amount: amount)
    }
    
    override func showProduct() {
        print("ชื่อ \(self.productName) ราคา \(String(format: "%.2f",(self.productPrice))) จำนวนที่เหลือ \(self.amount) \(self.productType) \(foodType)")
    }
}

var productA = Food(productName: "Rice", productType: .Food, productPrice: 50, amount: 12, foodtype: .HumanFood)
productA.showProduct()

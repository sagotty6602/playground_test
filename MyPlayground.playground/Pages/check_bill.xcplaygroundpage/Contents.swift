import UIKit

struct FoodDetail {
    let foodName: String
    let foodPrice: Double
}
var firstBill = [FoodDetail(foodName: "Food1", foodPrice: 100), FoodDetail(foodName: "Food2", foodPrice: 130), FoodDetail(foodName: "Food3", foodPrice: 98)]
func showDetail(detailOfBill: [FoodDetail]) {
    print("======================")
    for food in detailOfBill {
        print("\(food.foodName) : \(food.foodPrice)")
    }
    print("======================")
    print("Service charge : ฿\(String(format: "%.2f", serviceCharge(service: detailOfBill)))")
    print("Vat 7% : ฿\(String(format: "%.2f", vat(vat: detailOfBill)))")
    print("Total : ฿\(String(format: "%.2f", totalPrice(total: detailOfBill)))")
}
func sumPrice(price: [FoodDetail]) -> Double {
    var result: Double = 0
    for food in price {
        result += food.foodPrice
    }
    return result
}
func serviceCharge(service: [FoodDetail]) -> Double {
    return sumPrice(price: service) * 0.1
}
func vat(vat: [FoodDetail]) -> Double {
    return (sumPrice(price: vat) + serviceCharge(service: vat)) * 0.07
}
func totalPrice(total: [FoodDetail]) -> Double {
    return sumPrice(price: total) + serviceCharge(service: total) + vat(vat: total)
}

showDetail(detailOfBill: firstBill)

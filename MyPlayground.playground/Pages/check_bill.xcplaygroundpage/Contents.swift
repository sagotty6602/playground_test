import UIKit

struct FoodDetail {
    let foodName: String
    let foodPrice: Double
}
var firstBill = [FoodDetail(foodName: "Food1", foodPrice: 100), FoodDetail(foodName: "Food2", foodPrice: 130), FoodDetail(foodName: "Food3", foodPrice: 98)]
func showDetail(detailOfBill: [FoodDetail]) {
    print(lineUp())
    for food in detailOfBill {
        print("\(food.foodName) : \(formatString(num: food.foodPrice))")
    }
    print(lineUp())
    print("Service charge : ฿\(formatString(num: serviceCharge(service: detailOfBill)))")
    print("Vat 7% : ฿\(formatString(num: vat(vat: detailOfBill)))")
    print("Total : ฿\(formatString(num: totalPrice(total: detailOfBill)))")
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

func formatString(num: Double) -> String {
    return String(format: "%.2f", num)
}

func lineUp() -> String {
    return "======================="
}

showDetail(detailOfBill: firstBill)

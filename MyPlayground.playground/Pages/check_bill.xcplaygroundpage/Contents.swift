import UIKit

struct foodDetail {
    let foodName : String
    let foodPrice : Float
}
var test = [
            foodDetail(foodName: "Food1", foodPrice: 100),
            foodDetail(foodName: "Food2", foodPrice: 130),
            foodDetail(foodName: "Food3", foodPrice: 98)
]
func showDetail(detailsOfTheResceipt: [foodDetail]) {
    print("============================")
    for detail in detailsOfTheResceipt {
        print("\(detail.foodName) : ฿\(detail.foodPrice)")
    }
    print("============================")
    print("service charge 10% : ฿\(String(format: "%.2f", serviceCharge(detailsOfTheResceipt: detailsOfTheResceipt)))")
    print("Vat 7% : ฿\(String(format: "%.2f", vat(detailsOfVat: detailsOfTheResceipt)))")
    print("Total : ฿\(String(format: "%.2f", totalPrice(total: detailsOfTheResceipt)))")
}

func sumPrice(sum: [foodDetail]) -> Float{
    var result: Float = 0
    for price in sum {
        result += price.foodPrice
    }
    return result
}

func serviceCharge(detailsOfTheResceipt: [foodDetail]) -> Float{
    return sumPrice(sum: detailsOfTheResceipt) * 0.10
}

func vat(detailsOfVat: [foodDetail]) -> Float{
    return (sumPrice(sum: detailsOfVat) + serviceCharge(detailsOfTheResceipt: detailsOfVat)) * 0.07
}

func totalPrice(total: [foodDetail]) -> Float{
    return sumPrice(sum: total) + serviceCharge(detailsOfTheResceipt: total) + vat(detailsOfVat: total)
}


showDetail(detailsOfTheResceipt: test)

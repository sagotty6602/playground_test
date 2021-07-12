import UIKit

struct foodDetai {
    let foodName : String
    let foodPrice : Float
}
var test = [
            foodDetai(foodName: "Food1", foodPrice: 100),
            foodDetai(foodName: "Food2", foodPrice: 130),
            foodDetai(foodName: "Food3", foodPrice: 98)
]
func showDetail(detailsOfTheResceipt: [foodDetai]) {
    print("============================")
    for detail in detailsOfTheResceipt {
        print("\(detail.foodName) : ฿\(detail.foodPrice)")
    }
    print("============================")
    print("service charge 10% : ฿\(String(format: "%.2f", serviceCharge(detailsOfTheResceipt: detailsOfTheResceipt)))")
    print("Vat 7% : ฿\(String(format: "%.2f", vat(detailsOfVat: detailsOfTheResceipt)))")
    print("Total : ฿\(String(format: "%.2f", totalPrice(total: detailsOfTheResceipt)))")
}

func serviceCharge(detailsOfTheResceipt: [foodDetai]) -> Float{
    var service : Float = 0
    for price in detailsOfTheResceipt {
        service += price.foodPrice
    }
    return service * 0.10
}
func vat(detailsOfVat: [foodDetai]) -> Float{
    var result : Float = 0
    for price in detailsOfVat {
        result += price.foodPrice
    }
    return (result * 1.10) * 0.07
}
func totalPrice(total: [foodDetai]) -> Float{
    var result : Float = 0
    for price in total {
        result += price.foodPrice
    }
    return result + (result * 0.10) + ((result * 1.10) * 0.07)
}
showDetail(detailsOfTheResceipt: test)

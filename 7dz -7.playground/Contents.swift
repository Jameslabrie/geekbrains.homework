import UIKit
enum InternetCarsStoreError : Error{
    case invalidSelection
    case emptyCard(coinsNeeded: Int)
    case outofStock
}

struct Cars {
    var price: Int
    var count: Int
    let product: Product
}
struct Product {
    let name: String
}
class InternetCarsStore {
    var inventory = [
        "bmw" : Cars(price: 32000, count: 7, product: Product(name: "bmw")),
        "hyundai": Cars(price: 18000, count: 2, product: Product(name: "hyundai")),
        "kia": Cars(price: 16000, count: 4, product: Product(name: "kia")) ]
    
    var moneyonCard = 0
    
    func sell(carsNamed name:String) throws -> Product {
        guard let cars = inventory[name] else {
            throw InternetCarsStoreError.invalidSelection
        }
        guard cars.count > 0 else {
            throw InternetCarsStoreError.outofStock
        }
        guard cars.price < moneyonCard else {
            throw InternetCarsStoreError.emptyCard(coinsNeeded: cars.price - moneyonCard)
        }
        moneyonCard -= cars.price
        var newCar = cars
        newCar.count -= 1
        inventory[name] = newCar
        return newCar.product
}
}

let sold1 = InternetCarsStore.sell("kia")

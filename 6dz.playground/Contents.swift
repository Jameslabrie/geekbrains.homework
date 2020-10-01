import UIKit

protocol Car {
    var horsePower: Int {get set}
    var doors: Int {get set}
    }

class SportCar: Car {
    var horsePower: Int = 100
    var doors: Int = 2
    init(hp: Int, doors: Int) {
        self.horsePower = hp
        self.doors = doors
    }
    
    
}

class TrunkCar: Car{
    var horsePower: Int = 300
    var doors: Int = 5
    init(hp: Int, doors: Int) {
        self.horsePower = hp
        self.doors = doors
    }
  
    
}
struct Stack<T: Car> {
    
    private var elements  = [T]()
    
    mutating func pop() -> T {
        return elements.removeLast()
    }
    
    
    mutating func push(_ element: T){
        elements.append(element)
        
    }
    func sortByHP(_ hp: Int) -> [T] {
        return elements.filter { $0.horsePower >= hp }
    }

    subscript (index : Int) -> T? {
        if index >= 0 && index <= (elements.count - 1){
            return elements[index]
        } else {
            return nil
        }
    }
}

let car1 = SportCar(hp: 100, doors: 2)
let car2 = SportCar(hp: 120, doors: 2)
let car3 = SportCar(hp: 130, doors: 2)
let car4 = SportCar(hp: 140, doors: 2)


let sportCars = [car1, car2, car3,car4]


let truck1 = TrunkCar(hp: 150, doors: 5)

sportCars[3]

var sportCarsStack = Stack<SportCar>()
sportCars.forEach({
    sportCarsStack.push($0)
})

let arraySorted = sportCarsStack.sortByHP(130)

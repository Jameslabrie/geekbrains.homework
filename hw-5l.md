enum TrunkFull{
    case full
    case empty
}

struct Car {
    let CarBrand: CarBrand
    let Age: Int
    let AmountOfTrunk: AmountOfTrunk
    let launche_engine: launche_engine
    let OpenWindows: OpenWindows
    let TrunkFull: TrunkFull
    var EngineOn: Bool = false

}
    var car1 = Car(CarBrand: .BMW, Age: 2, AmountOfTrunk: .small, launche_engine: .no, OpenWindows: .open, TrunkFull: .empty)
    var car2 = Car(CarBrand: .Mercedes, Age: 12, AmountOfTrunk: .average, launche_engine: .yes, OpenWindows: .close, TrunkFull: .full)

car2.Age
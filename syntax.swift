//
// USES OF ( _ )
//
// IGNROING A FUNCTION'S RETURN VALUE 
func someFreakingFunc() -> String {
    return "Hello"
} 
let _ = someFreakingFunc() // returned string is ignored 

// IGNORING PARTS OF A TUPLE
let person = ("John", "Doe", 30)
let (firstName, _, age) = person
print("\(firstName) is \(age) years old.")

// IGNORING PARAMETERS IN CLOSURES 
let nums = [10, 20, 30]
// the map closure provides an Int, but we don't use it
let strings = nums.map { _ in 
    return "hello"
}
print(strings)

// UNUSED LOOP VARIABLES
for _ in 1 ... 3 { // run a block of code 3 times
    print("LOOPING")
} 

// IGNORING CASE VALUES IN SWITCH
enum Weather {
    case sunny
    case windy(speed:Int)

}
let current = Weather.windy(speed:15)
switch current {
    case .sunny:
        print("It's sunny")
    case .windy(_): // we matchthe 'windy' case but don't care about the speed
    print("It's windy but the speed doesn't matter")
}

//
// ENUMS
//
// define a type and all the possible options:
enum TrafficLight{
    case red 
    case yellow
    case green
}
let light = TrafficLight.green
print(light)
// the case keyword defines one of the possible values within an enum. 
// a case is a box, in the case of windy, that box contains something, an Int value representing the wind speed.
// case can also contain methods or computed properties, you can add functions and properties directly inside.

enum Weather2 {
    case cloudy
    case snowy(depth:Int)
    
    func getDescription() -> String {
        switch self {
            case .cloudy:
                return "It's a beautiful and cloudy day"
            case .snowy(let depth): // let speed binds the value to a constant
                return "It's snowy day with a depth of \(depth) inches of snow"
        }
    }
}

let snowDepth = Weather2.snowy(depth:3) // in this case, snowDepth just life current, is not a string or a simple number, it's an instance of the Weather enum.
// its type is Weather2
// its value is the specific case .snowy bundled together with its associated value 15
print(snowDepth.getDescription())


// Then what the heck does Swift use as switch;case as in the flow control structure?
let value = 1 
switch value {
    case 1: 
        print("this guy printz") // here it stops the execution, no "break" needed, if you want it to keep going you must type "fallthrough"
    case 2:
        print("This guy doesn't")
    default:
        print("this guy also doesn't")
}
enum Weather3{
    case sunny, cloudy, rainy
}
let secondCurrent = Weather3.sunny
// this is exahustive, every case is handled
switch secondCurrent{
    case .sunny:
        print("wear sunglasses")
    
    case .cloudy:
        print("It might be gloomy")
    case .rainy:
        print("Bring an umbrella")
}

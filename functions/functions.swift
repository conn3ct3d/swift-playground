func greeter(){
    print("Hello, world")
}
greeter()

// receiving parameters
func add(_ a: Int, _ b: Int) -> Int { // the argument label _ no label should be used when calling the function
    return a + b
}

func add2(a:Int, b: Int) -> Int {
     return a + b
}
let sum = add2(a:5, b:-2) // argument labels are required when not using _
print(sum)

// other uses of _
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
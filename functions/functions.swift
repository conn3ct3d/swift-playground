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



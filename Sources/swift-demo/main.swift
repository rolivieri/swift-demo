// Swift demo!

// Type inference
print("\n-- Type inference --")
var firstName = "John"
print("Hello \(firstName)!")
var lastName: String = "Doe"
print("Hello \(lastName)!")
print("-- Type inference --\n")

// Tuples
print("\n-- Tuples --")
let aTuple = (firstName: "John", lastName: "Doe")     
print("aTuple: \(aTuple)")
firstName = aTuple.firstName
print("Tuple.firstName: \(firstName)")
let bTuple = ("John", "Doe")     // tuples
print("bTuple: \(bTuple)")

// Return multiple values (tuples)
func getValues() -> (num: Int, str: String) {
     return (num: 100, str: "a string")
}

let retValues = getValues()
// Using labels
print("Tuple.num: \(retValues.num)")
print("Tuple.str: \(retValues.str)")
// Using index
print("Tuple.0: \(retValues.0)")
print("Tuple.1: \(retValues.1)")
print("-- Tuples --\n")

// Optionals
print("\n-- Optionals --")
var age: Int?     // optional
age = 100
//let _ = age + 5 //error
if let age = age {
    let _ = age + 5
    print("Age has a value: \(age)")
} else {
     print("No value for age!")
}
print("-- Optionals --\n")

// Closures
print("\n-- Closures --")
func aTest(str: String, callback: (Int, Int) -> Int) {
    print("str: \(str)")
    let result = callback(4, 4)
    print("Result from callback closure: \(result)")
}

// Passing a closure as a parameter
aTest(str: "A string") { (a, b) -> Int in
     return (a + b)
}
print("-- Closures --\n")

print("\n-- Generics --")
// Generics
class MyClass<A> {     
     let item: A     
     public init(item: A) {
          self.item = item          
     }

     func doOperation(anotherItem: A) {
        print("doOperation: \(anotherItem)")
     }

     func printTypeForA() {
          let aMirror = Mirror(reflecting: item)
          print("\(aMirror) : \(item)")
     }
}

let myClassIntance1 = MyClass(item: "A String")
myClassIntance1.printTypeForA()
myClassIntance1.doOperation(anotherItem: "Another string")
//myClassIntance1.doOperation(anotherItem: 5) //error

let myClassIntance2 = MyClass(item: 1)
myClassIntance2.printTypeForA()
myClassIntance2.doOperation(anotherItem: 200)
print("-- Generics --\n")

//Extensions
print("\n-- Extensions --")
extension MyClass {
    func sayHello() {
        print("Hello to you!")
    }
}
myClassIntance1.sayHello()
print("-- Extensions --\n")

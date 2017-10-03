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
let name = aTuple.firstName
print("name: \(name)")
let bTuple = ("John", "Doe")     // tuples


// Return multiple values (tuples)
func getValues() -> (num: Int, str: String) {
     return (num: 100, str: "a string")
}

let retValues = getValues()
// Using labels
print(retValues.num)
print(retValues.str)
// Using index
print(retValues.0)
print(retValues.1)
print("-- Tuples --\n")

// Optionals
print("\n-- Optionals --")
var age: Int?     // optional
age = 100
if let age = age {
     print("Age has a value: \(age)")
} else {
     print("No value for age!")
}
print("-- Optionals --\n")

// Closures
print("\n-- Closures --")
func aTest(str: String, callback: (Int, Int) -> Int) {
     let result = callback(4, 4)
     print("result from callback: \(result)")
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
          print(anotherItem)
     }

     func printTypeForA() {
          let aMirror = Mirror(reflecting: item)
          print(aMirror)
     }
}


let myClassIntance1 = MyClass(item: "A String")
myClassIntance1.printTypeForA()
myClassIntance1.doOperation(anotherItem: "Another string")

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
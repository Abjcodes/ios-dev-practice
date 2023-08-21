//optionals

var name: String? 

print(name)

//Guards

//oops

//protocols

//delegation

do {
    try <#expression#>
    <#statements#>
} catch <#pattern 1#> {
    <#statements#>
} catch <#pattern 2#> where <#condition#> {
    <#statements#>
} catch <#pattern 3#>, <#pattern 4#> where <#condition#> {
    <#statements#>
} catch {
    <#statements#>
}


func test(){
    do{
        try test2()

    }catch{
            
        }
}

class c: A {
    func test(){
        print("protocol is satisfied")
    }
}

protocol A {
    func test()
}

class Person{
    struct Name{
        var firstName: String
        var middleName: String?
        var lastName: String
    }
    var name: Name?  
    let age = 10
}

//optional chaining
var person1 = Person(name?.middleName)

if person1 != nil {
    if person1.name != nil {
        print(person1.name.middleName)
    }
}
 
//optional binding

if let person = person1, let personName = person.name{
    print(personName.middleName)
}

//force unwrapping

// 

var name: String = person1.name ?? "Adam"

//implicitly unwrapping

var age1: Int! = 30

//oops concepts in swift

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let person = Person(name: "Alice", age: 25)

//inheritance
class Student: Person {
    var studentID: String
    
    init(name: String, age: Int, studentID: String) {
        self.studentID = studentID
        super.init(name: name, age: age)
    }
}

let student = Student(name: "Bob", age: 20, studentID: "12345")

//polymorphism

let person: Person = Student(name: "Charlie", age: 30, studentID: "67890")
// let person: Person = Teacher(name: "Charlie", age: 30, teacherID: "67890")

// encapsulation - using access modifiers
class BankAccount {
    private var balance: Double
    
    init(initialBalance: Double) {
        self.balance = initialBalance
    }
    
    func deposit(amount: Double) {
        balance += amount
    }
    
    func withdraw(amount: Double) {
        if balance >= amount {
            balance -= amount
        }
    }
}

//abstraction - using protocols

protocol Shape {
    var area: Double { get }
}

class Circle: Shape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    var area: Double {
        return Double.pi * radius * radius
    }
}

class Rectangle: Shape {
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    var area: Double {
        return width * height
    }
}
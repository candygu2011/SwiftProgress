// Playground - noun: a place where people can play

import UIKit


// hello my first Swift Project
let individualScores = [75,43,103,87,12]
var  teamSorec = 0
for score in individualScores{
    if score>50{
        teamSorec += 3
        
    }else{
        teamSorec += 1
    }
    
}
teamSorec

var option:String? = "hello"
option == nil;

var optionName: String? = "candygu"
var greeting = "hello!"
if let name = optionName {
    greeting = "hello ,\(name)"
}


let vegetable = "red pepper"
switch vegetable {
    case "celery":
        let vegetableComment = "add some raisins and make ants on a log"
    case "cucumber","watercress":
        let vegetableComment = "That would make a good tea sandwich"
    
    case let x where x.hasSuffix("pepper"):
         let vegetableComment = "is it a spicy \(x)?"
    default:
         let vegetableComment = "everyting is taste"

}


let interestingNumber = [
    "prime":[2,3,5,7],
    "fibonacci":[1,2,3,5,8],
    "square":[1,4,9,16,25],
]

var largest = 0
for (key , valus) in  interestingNumber {
    
    for number in valus {
        if number > largest {
            largest = number
        }
    }
}

largest

var n = 2
while n < 100 {
    n = n * 2
}
n

var m = 2
do {
    m = m * 2
} while m < 100
m

var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
firstForLoop

var secondForLoop = 0
for var i = 0; i < 4; ++i {
    secondForLoop += i
}
secondForLoop

func greet(name:String,day:String) -> String {
    
    return "hello \(name) ,today is \(day)"
}
greet("candy", "Monday")


func calculateStatistics(scores: [Int]) -> (min:Int,max: Int, sum: Int) {
    
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min,max,sum)
}

let statistics = calculateStatistics([5,3,100,3,9])
statistics.sum
statistics.2
statistics.0


func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(42,597,12)
sumOf(1,2,3)

func returnFifteen() -> Int {
    // 先声明定义  后调用
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()


func makeIncrementer() -> (Int -> Int) {
    func addOne(number:Int) -> Int {
        return 1 + number
    }
    return addOne
    
}
var increment  = makeIncrementer()
increment(7)



func hasAnyMatches(list:[Int],condition:Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
        
    }
    return false
}

func lessThanTen(number:Int) -> Bool {
    return number < 10
}
var numbers = [20,19,7,12]
hasAnyMatches(numbers, lessThanTen)

numbers.map { (number:Int) -> Int in
    let result = 3 * number
    return result
}

let mappedNumbers = numbers.map({
    number in 3 * number
})
mappedNumbers

// 排序 条件：{$0 < $1} 从小到大
let sortedNumbers = sorted(numbers){$0 < $1}
sortedNumbers


// 定义一个类
class Shape {
    var numberOfSides = 0
    func simpleDesc() -> String {
        return "a shape with \(numberOfSides) sides"
    }
}
var shape = Shape()
shape.numberOfSides = 7
var shapeDesc = shape.simpleDesc()


class NamedShape {
    var numberOfSidesz: Int = 0
    var name : String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDesc() -> String {
        return "a shape with \(numberOfSidesz) sides"
    }

}

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength:Double,name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSidesz = 4
        
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    override func simpleDesc() -> String {
        return "a square with sides of length \(sideLength)"
    }
    
}
let test = Square(sideLength: 5.2, name: "test quare")
test.area()
test.simpleDesc()



class EquilataterTriangle: NamedShape {
    var sideLength: Double = 0.0
    init(sideLength : Double ,name:String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSidesz = 3
    }
    
    var perimeter:Double {
        get{
            return 3.0 * sideLength
        }
        
        set {
            sideLength = newValue / 3.0
            
        }
    }
    
    override  func simpleDesc() -> String {
        return "a equilateral triangle with sides of length \(sideLength)"
    }
}
var triangle = EquilataterTriangle(sideLength: 3.1, name: "a triangle")
// 先打印原来的值
triangle.perimeter
triangle.sideLength

// 重新赋值
triangle.perimeter = 9.9
triangle.sideLength



let minChar = UniChar.min
let maxChar = UniChar.max

let minInt = UInt8.min
let maxInt = UInt8.max

// tuple : 元组可包含各种类型
// 利用"_" 分割元组元素
let justOverOneMillion = 1_000_000.000_000_1
let http404Error = (404,"not found")
let (statusCode,statusMessage) = http404Error
println("the status code is \(statusCode)")
println("the status message is \(statusMessage)")

let (_,justTheStarusCode) = http404Error
println("the status code is \(justTheStarusCode)")
println("the status code is \(http404Error.0)")
println("the status code is \(http404Error.1)")


// optional value (可选值)
/*
    在C或者OC中不存在Optionals这个概念。在OC中最最近这个概念意思的是：在函数调用时，返回对象或者返回nil，这个nil意味着
    有效对象的absence value.然后，这仅对对象起作用，对结构体、基本C类型或者枚举值类型不起作用，对于这些类型，OC中通过
    返回NSNotFound这个特殊的值来表明absence value，通过这个值，函数调用者就可以检测处理。在Swift中，optionals可以是任何
    类型，不需要特殊的常量表示。

*/
let possibleNumber = "123"
let converedNumber = possibleNumber.toInt()


// if语句和强制拆包
// 如果确定包含值 可以使用！来访问 放在optional后面
if converedNumber != nil {
    // 如果能够进到这里，表示convertedNumber一定有值，那么我们就可以强制拆包
    // 强制拆包就是在optional value后面添加一个！，也就是convertedNumber!
    // 但这也是需要注意的地方，使用强制拆包一定要确保这个可选值有值，否则
    // 强制拆包会崩溃
    println("\(possibleNumber) contains some integer value:\(converedNumber!)")
    println(" converedNumber :\(converedNumber!)")

}else{
    println("convertedNumber not contains some integer value")

}


if let actualNumber = possibleNumber.toInt() {
    println("\(possibleNumber) contains some integer value:\(converedNumber!)")
}else{
     println("\(possibleNumber) not contains some integer value")
}


/*
NOTE
SWIFT中的nil不同与OC中的nil，在OC中，nil表示不存在的对象。在Swit中，nil不是指针，只是表示某种类型的值不存在，
optional可以设置任何类型值为nil，不仅仅是对象类型。
*/







































import UIKit

/*今天学习swift的真正功能：协议和面向协议编程(POP:protocol-oriented programming)
 
 面向协议编程用轻量和简单的协议来替代庞大、复杂的继承
 
 */

protocol Identifiable {
    var id: String {get set}
}

// 不能直接创建协议的实例，但是可以创建一个结构体遵循该协议
struct User: Identifiable {
    var id: String
}

// 最后我们写个displayID()方法来接收Identifiable对象
func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

//----------2.协议继承
// 一个协议可以继承其他协议，与类不同的是，协议可以继承多个协议
protocol Payable {
    func caculateWages() -> Int
}

protocol Needstraining {
    func study()
}

protocol Hasvacation {
    func take(days: Int)
}

protocol Employee: Payable, Needstraining, Hasvacation {
    
}


// ----------------3.延展
// 延展允许你给存在的类添加方法，
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

// Swift不会让你在extensions中添加存储属性，不过可以添加计算属性
extension Int {
    // 是否为偶数
    var isEven: Bool {
        return self % 2 == 0
    }
}

print(7.isEven)
print(8.isEven)

//---------4.协议扩展
let pythos = ["Eric", "Graham", "Hohn", "Michael","Terry","Terry"]
let beatles = Set(["John", "Paul","George","Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}

// 所有Array和Set都有这个方法了
pythos.summarize()
beatles.summarize()


//---------5.面向协议编程
//协议扩展可以为协议提供默认的实现方法
protocol Identifiable1 {
    var id: String {get set}
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id)")
    }
}


struct User1: Identifiable {
    var id: String
}

let twostraws = User(id: "twostraws")
twostraws.identify()

//----------6.总结
/*
 1. 协议为遵循协议的类或者结构体声明了必须有的属性和方法，但没有提供方法的实现
 2. 协议可以像类一样继承创建
 3. 延展可以为特殊的类如Int添加方法和计算属性
 4. 协议扩展可以让你为协议添加方法和属性
 5. 面向协议编程是对app结构设计为一些列协议的实践，然后通过协议扩展来提供默认的方法实现
 */






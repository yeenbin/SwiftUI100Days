import UIKit

//-------------------结构体
// 在结构体中的变量被称为属性
struct Sport {
    var name : String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"

//-----------2. 计算属性
struct Sport1 {
    var name: String
    var isOlympicSport: Bool
    
    // olympicStatus 看起来像是，但是根据其他属性的值返回不同值
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport1(name: "Chessboxing", isOlympicSport: false)

print(chessBoxing.olympicStatus)

//-------------属性值观察

//属性观察让你运行代码在属性值改变之前或者之后，

struct Progress {
    var task: String
    var amount: Int {
        // 实现amount属性值一改变就打印一条信息
        // 你也可以使用willSet来实现当属性值改变就做出反应
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task:  "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


//--------结构体中的方法
struct City {
    var population: Int
    func collectTaxes() -> Int {
        return population * 1000
    }
}

// 方法是属于结构体的，所以我们用结构体的实例来调用
let london = City(population: 9_000_000)
print(london.collectTaxes())


//---------5.
// 如果结构体拥有可变属性，但是创建的结构体实例为常量,那这个属性不能被改变，因为结构体为常量，那么
// 它的所有属性为常量，不管它是如何创建的
// 如果你想在方法中修改属性值，需要在方法前加mutating关键词
struct Person {
    var name: String
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

// 因为它修改了属性值，SWift只允许在Person变量实例中调用
var person = Person(name: "Ed")
person.makeAnonymous()


// ----------------6.字符串中的属性和方法
// 目前我们使用了很久的字符串，实际上它们是结构体---拥有自己的方法和属性给我们使用来查询和修改字符串
let string = "Do or do not, there is no try."

print(string.count)

//方法 hasPrefix()用来验证字符串是否以特定的字符串打头
print(string.hasPrefix("Do"))

//把字符串字母全部大写的uppercased()的方法
print(string.uppercased())

// 把字符串字母排序后返回一个数组
print(string.sorted())


// ---------7.数组中的字符串和方法（数组实际上也是结构体）
// 所以数组也有自己的方法和属性，我们用来查询和修改

var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
// 定位数组中的定位
toys.firstIndex(of: "Buzz")
// 按字母顺序给数组的元素进行排序
print(toys.sorted())

//移除数组中的第一个元素
toys.remove(at: 0)

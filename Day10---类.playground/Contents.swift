import UIKit
//---------------------类
/*类和结构体很类似，都用它们来创建包括属性和方法的行类型，它们都包含一个重要的特征继承---在另一个类的基础上创建一个新类
 创建iOS app 避免不了对类的使用，但是还是要记住尽量让你的代码简单，因为一个特征存在，并不代表你一定要使用它
 好的程序员写人可以看懂的代码。
 SwiftUI在UI设计中会大量的使用结构体，如果你将一个对象显示在屏幕上，或者在你布局之间传递对象，这种情况下多是用类
 */

//-------------1.创建你自己的类
//类和结构体类似，允许你创建为拥有自己属性和方法的新类型，但是有五处不同之处
//1.类不会由逐一赋值初始化，这意味着在类中你总是要创建自己的初始化
class Dog {
    var name: String
    var breed: String
    init(name:String, breed:String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

// ---------------------2.类继承
// 类可以基于已存在的类进行创建,继承父类的所有属性和方法,被继承的叫“父类”，继承的叫“子类”

class Poodle: Dog {
    // 可以给Poodle自己的初始化器
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

// 处于安全考虑，Swift总会让你调用super.init() 以防父类做了一些重要的工作

//----------------3.方法重写
class Cat {
    func makeNoise() {
        print("Woof!")
    }
}

class Kitten: Cat {
    override func makeNoise() {
        print("Yip!")
    }
}

let kitten = Kitten()
kitten.makeNoise()

// -------------最终类（无法被继承）
// 虽然类继承很有用，但是如果你想你的类不被继承，使用final关键字来修饰类，表示它不能被其他类继承
final class Cow {
    var name: String
    var breed: String
    init(name:String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

//---------------4.copying object
// 类和结构体第三个不同之处在于是它们如何被拷贝。结构体被拷贝会生成不一样的对象，
// 类被拷贝生成的对象指向同一个地址

class Signer {
    var name = "Taylor Swift"
}

var signer = Signer()
print(signer.name)

var signerCopy = signer
signerCopy.name = "Justin Bieber"
// 因为signerCopy和signer指向的是同一个地址，所以修改signerCopy的name，signer也会一起被修改
print(signer.name)

struct Dancer {
    var name = "Taylor Swift"
}
var dancer = Dancer()
print(dancer.name)

var dancerCopy = dancer
dancerCopy.name = "Jstin Bieber"
print(dancer.name)

//------------5.deinitializers
//类和结构体第四个不同之处：类有deinitializers，就是当类实例被销毁时运行的代码

class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive")
    }
    func prinGreeting()  {
        print("Hello, I'm\(name)")
    }
    deinit {
        print("\(name) is no more!")
    }
}

// 循环创建并被摧毁
for _ in 1...3 {
    let person = Person()
    person.prinGreeting()
}

//----------6.Mutability
//类和结构体最后一个不用之处就是处理常量的方式，如果一个常量结构体中包含可变的属性，这个属性不能被改变因为结构体是常量颠三，但是如果一个常量的类中包含可变的属性，那么这个属性是可以被改变的，不需要像结构体那样用mutating关键词来修饰
let taylor = Signer()
taylor.name = "Ed Sheeran"
print(taylor.name)

// 如果你想停止这种发生，需要在类中将属性声明为常量

///--------------------6.总结
/*
 1.结构体和类很相似，它们都让你创建一个包含自己属性和方法的新类型
 2.一个类可以继承与另一个类，自动获取来自父类的属性和方法
 3.可以使用final关键词，让此类变为不可继承的
 4.子类可以重写父类的方法
 5.当两个变量指向同一个地址，改变这个就会改变那个
 6.类可以有deinitializer，就是当类实例销毁时运行的代码
 7.常量类中的可变变量可以给修改，常量结构体中的变量不能被修改
 */

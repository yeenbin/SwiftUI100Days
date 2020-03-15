import UIKit
/*
  结构体将独立的数据组合成新的，然后附上方法给我们操作数据，
  今天来学习结构体的更先进特征让它们变得更强，包括获取控制，静态属性，懒加载
  在Swift中，懒加载是很重要的属性优化
 这些在SwiftUI中大量使用，
 */
//------------------1.Initializers 初始化
// 初始化提供不同的方法让你来创建结构体,一般默认初始化方法是成员逐一初始化方法，让你给每个属性逐一赋值

struct User {
    var username: String
}
var user = User(username:  "twostraws")
//我们可以提供我们自己的初始化方法来替换默认的初始化方法

struct User1 {
    var username: String
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
// 在initializers前面可以不用写 func, 但是你得确保在初始化完成时给每个属性一个值
var user1 = User1()
user1.username = "twostraws"


//------------------2.结构体实例的自我关联
// 在initialize中用self指代当前的结构体实例
struct Person {
    var name: String
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

var person = Person(name: "John")

//------------------3.懒加载
// Swift允许你创建一些属性只有当你需要使用它们的时候才会创建
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person1 {
    var name: String
    var familyTree = FamilyTree()
    init(name:String) {
        self.name = name
    }
}

var person1 = Person1(name: "person1")
person1.familyTree
//------------------4.静态属性和方法
// 目前我们创建的属性和方法都是单独归结构体实例私有的，
// 例如Student结构体可以创建多个student实例并有他们自己的属性和方法
struct Student {
    var name: String
    init(name: String) {
        self.name = name
    }
}
let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")

//------------------5.获取权限的控制
// 使用private关键字让属性变为私有的
struct Person2 {
    private var id: String
    init(id: String) {
        self.id = id
    }
    
    //只有结构体里的方法才可以访问这个属性
    func identify() -> String {
        return "My social security number is \(id)"
    }
}
// 另外一个关键词是public，让属性和方法公开给其他代码调用

//------------------6.结构体总结
/*
 1.你可以自己创建结构体，拥有自己的属性和方法
 2.可以使用存储属性或者计算属性来计算值
 3.如果你在结构体方法中修改属性，需要在方法前面加上mutating关键词
 4.初始化器是创建结构体的特别方法，普通的是逐一构建成员初始化器，如果你想构建自己的初始化器必须赋值属性
 5.在方法中用self来引用结构体的实例
 6.lazy关键词告诉Swift去创建属性只有当它们第一次被用到
 7.通过static关键让所有的结构体实例共享属性
 8. privat和public设置访问权限
 */

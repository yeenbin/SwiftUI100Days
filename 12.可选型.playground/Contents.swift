import UIKit

//------------可选型
//------------1.处理丢失数据

var age: Int? = nil

age = 38

//---------2.展开可选型

var name: String? = nil
//获取name.count返回的是个可选型类型，可能存在值也可能不存在值，
// 如果直接访问swift是不允许的，需要一个展开的过程
//swift中展开的方式是用if let 语句
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

//----------使用guard来展开可选型
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello, \(unwrapped)!")
}

greet(nil)

//-------强制展开
//在一些情况下，你明确知道可选型是有值的，就可以直接强制展开
let str = "5"
let num = Int(str)!
print(num)






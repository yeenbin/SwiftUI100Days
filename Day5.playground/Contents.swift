import UIKit

// 方法可以让我们重复使用代码片段
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}

printHelp()



//-----------2.接受参数
// 传递给方法的值我们称为参数
func square(number: Int) {
    print(number * number)
}

square(number: 8)

func squareWithReturnValue(number: Int) -> Int {
    return number * number
}

let result = squareWithReturnValue(number: 8)
print(result)

//------------3.参数标签
// swift允许我们给每个参数提供别名
func sayHello(to name: String) {
    print("Hello, \(name)")
}


//-------------省略字符标签
func greet(_ person: String) {
    print("Hello,\(person)!")
}

greet("yeenbin")
// 不过给参数别名，更易容，不容易困惑

// 可以给参数默认的值

func greet1(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)")
    }else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Taylor")
greet1("Taylor", nicely: false)

//-----------7.可变函数 (可接受多个同类型的参数)
print("Haters","gonna","hate")

// 可以在函数参数类型后面添加... 使得参数是多个可变的，在函数内部，将这多个参数存储到数组中，必要时你可以循环获取它们

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1,2,3,4,5)

//----------8.抛异常方法
// 因为参数传输错误导致方法失败
// 首先我们定义一个抛出错误的枚举
enum PasswordError: Error {
    case obvious
}

// 接下来书写抛出错误异常的方法
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

// 用throws关键词，写在返回值前面

//----------9.运行抛出异常方法
// swift不喜欢你的程序运行的时候出错,这意味这它不会让你偶然运行抛出错误的函数
// 你需要用3个关键词 do (开始可能会出错的代码) try（捕捉可能会出错的） catch （处理出错）
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password")
}





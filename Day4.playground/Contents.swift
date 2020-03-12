import UIKit

//  for循环
let count = 1...10
for _number in count {
    print("Number is \(_number)")
}

// 遍历数组
let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}

// 如果不使用for循环给的常量，可以用_代替
print("Players gonna")
for _ in 1...5 {
    print("play")
}

// --------2.while 循环
// 例：游戏计时20s
var number = 1
while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come")

//-----------3. repeat循环 （至少会执行一次）
var number1 = 21
repeat {
    print(number1)
    number1 += 1
}while number1 <= 20

// repeat循环至少会执行一次，而while循环会运行前会先检查条件
// 下面的循环永远不会执行
while false {
    print("This is false")
}

//-------4.退出循环
// 可以使用break关键字退出循环
var countDown = 10
while countDown >= 0  {
    print(countDown)
    countDown -= 1
}

print("Blast off!")

countDown = 20
while countDown >= 0 {
    print(countDown)
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    countDown -= 1
}

//--------5.嵌套循环
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        // 如果我们想终止外部循环，得先给外部循环添加上标签outerLoop
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// 普通的break只能终止内部循环，终止外部循环需要给外部循环做上标记

// -----6. 跳过 继续循环 使用continude关键字
for i in 1...10 {
    // 跳过奇数，打印偶数
    if i % 2 == 1 {
        continue
    }
    print(i)
}

//--------7.使用while执行无限循环
// iPhone上的app都是在使用无限循环，当启动后就持续在监听事件直到你选择退出程序
// 只要让条件为true就会一直无限循环，
var counter = 0
while true {
    print(" ")
    counter += 1
    if counter == 273 {
        break
    }
}


// ---------8.循环总结

/*
 1. 循环让程序重复执行代码直到条件为false
 2. 最常用的是for循环，会为每个元素赋值为临时常量
 3. 如果你不想要for循环给你的临时常量，可以用下划线替代
 4. repeat循环虽然和while循环很像，但至少会执行一次
 5. 如果要终止嵌套的循环，需要给外循环赋值一个标签label
 6. 用continue关键字来跳过循环中的一项
 7. 无限循环不会停止直到你让它们停止，需要在循环中设置一个触发条件可以让无限循环停下
 */




import UIKit

// swift中的运算
let firstScore = 12
let secondScore = 4
let total = firstScore + secondScore
let difference = firstScore - secondScore

let produce = firstScore *  secondScore
let divided = firstScore / secondScore

// 取余 %
let remainder = 13 % secondScore

//--------------2.操作符重载

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// 记住Swift是类型安全的语言，这意味着不能讲类型混合在一起，不能添加一个integer类型的到string类型上

// 复合赋值操作符
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// 对比操作符 == 检查两个值是否相等，!= 检查2个值是否不相等
firstScore == secondScore
firstScore != secondScore

// 还有<  <=  > >=
firstScore < secondScore
firstScore <= secondScore
firstScore > secondScore
firstScore >= secondScore

// 这些操作符对字符串也是有效，字符串会按照字母顺序。

//  ----------条件语句
let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 21  {
    print("Blackjack!")
} else if firstCard + secondCard == 2 {
    print("Ace - lucky!")
} else {
    print("Regular cards")
}

// 结合条件 &&与   ||或

let age1 = 12
let age2 = 21

// 假如age1 > 18 是 false 就不会继续检查age2 是否大于18 ，因为没这个必要了
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is 18")
}

//可以在一个条件里面同时使用&&和|| 但是不要让条件过于复杂或者难度读懂

//-----------7.三目运算符
let firstCards = 11
let secondCards = 10
print(firstCards == secondCards ? "Cards are the same" : "Cards are different")

// 等价于下面的代码
if firstCards == secondCards {
    print("Cards are the same")
} else {
    print("Cards are different")
}


//--------8. switch条件语句
// 如果有很多条件使用if和else if的话， 改用switch和case结构语句看起来会更清晰
let weather = "sunny"
switch weather {
case "rain" :
    print("Bring an umbrella")
case "snow" :
    print("Wrap up warm")
case "sunny" :
    print("Wear sunsscreen")
    fallthrough
default :
    print("ENjoy your day!")
}

// default类型是需要的，因为Swift保证能够覆盖所有可能的情况
// Swift只会执行一个case，如果你想继续执行下个case就使用fallthrough关键字

//-----------9.范围操作符
/*
 Swift提供2种范围操作符, ..< 和...
 ..< 半开区间，不包括最后一个值
 ... 闭合区间，包括最后一个值
 例如：
 1..<5 包含 1，2，3，4
 1...5 包含 1，2，3，4，5
 */

let score1 = 84

switch score1 {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

//--------10.操作符和条件运算总结
/*
 1. Swift有操作符来运算和做对比，就像你知道的那样
 2. 有复合运算符类似 += ， -=
 3. 可以使用if, else, else if 根据条件的运算结果
 4. Swift有三目运算符结合条件检查和返回true和false代码的闭包。我不推荐你们自己使用它
 5. 如果使用同个值有多重条件的情况下，使用switch结构语句会更清晰
 6. 可以使用..< 和...来限定取值范围，取决与是否需要包含最后一个值
 */




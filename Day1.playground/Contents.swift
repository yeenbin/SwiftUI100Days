import UIKit

var str = "Hello, playground"
str = "Goodbuy" // strings
var age = 38 //integer
var population = 8_000_000

// Strings 和 integers是不同类型，不要搞混淆了

// Multi-line strings 多行字符串
var str1 = """
this goes
over multiple
lines
"""

var str2 = """
this goes \
over multiple \
lines
"""

// Double  and  booleans
var pi = 3.141

var awesome = true

// string interpolation 字符串插入
var score = 85
var scoreStr = "Your score was \(score)"
var results = "The test results are here: \(score)"

// constant 常量

let taylor = "Swift"


// 类型标明和注释
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true


/*总结：
 1. 用var来修饰变量，用let来修饰常量，合适情况下多使用let来修饰
 2. 字符串用双引号修饰，多行字符串用三引号修饰
 3. integers 赋值整数， doubles赋值极小的小数，booleans赋值true和false
 4. swift会自动判断常量和变量的类型，但是你可以直接指明它们的类型
 */

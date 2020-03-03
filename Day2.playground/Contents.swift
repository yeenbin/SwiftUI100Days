import UIKit

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

beatles[1]


//----------------2.set集合
/*
 set和arrrays有2个不一样的地方
 1.set集合元素的顺序是随机的，不像数组有顺序
 2.set集合没有重复的元素，所有的元素都是唯一的
 */

let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "redd", "blue"])
// 最后colorsw2还是只包括red, green,和 blue

//-------------------3.元组
/*
 元组允许你存储多个值到一个值上，听起来像数组，但是有不同之处
 1. 你不能添加或者而移除元组中的元素，它们是固定的
 2. 不能修改元组的元素类型，它一创建的时候类型就固定
 3. 可以通过元素顺序或者名字来获取元组中的元素，但是Swift不允许你读取到不存在的数字或者名字
 */

var name = (first: "Taylor", last: "Swift")
name.0
name.1
name.first
name.last

// 可以修改元组中的元素值，但是不能修改元组的类型

// -- 数组，集合和元素看起来很相似，但是它们都有各自清晰的用途
// 如果你想要一个明确，固定并有相关值的集合，你就用元组
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashhville")
// 如果你想要一个集合中的每个元素都是唯一,并且可以快速查找一个特定的元素是否在集合中，你应该用set
let set = Set(["aardvark", "astronaut", "azalea"])
// 如果你想要一个集合可以包含重复元素，或者关心元素的顺序，你可以使用array
let pythons = ["Eric", "Graaham","John","Michael", "Terry","Terry"];

// 数组是目前最常用的类型

// --------------4.字典
let heights = [
    "Taylor Swift" : 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]

// 如果我们使用一个不存在的key去字典中获取值，那么会返回nil

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]

// 可以给字典一个默认值“Unknow”来修复这个问题，用Unknow来替代返回值nil
favoriteIceCream["Charlotte",default: "Unknow"]

// --------------5.创建空的集合
// 创建一个空字典
var teams = [String : String]()
// 添加元素
teams["Paul"] = "Red"

// 创建一个存取Int类型的数组
var results = [Int]()
// 创建空的Set集合
var scores = Set<String>()
var numbers = Set<Int>()

var scoresDic = Dictionary<String,Int>()
var resultsArr = Array<Int>()

//-----------6.枚举
enum Result {
    case success
    case failure
}

let result = Result.success


enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// 默认会赋值从0开始，也可以
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

/*--------------总结
 1. 数组，集合，元组和字典允许你存储多个元素到单个值里面，它们用不同方式来做到如此，你可以更具具体情况来
    决定使用哪个。
 2. 数组根据你添加的顺序来存储元素，你可以用下标来获取它们
 3. Set集合的元素没有顺序，所以你不能通过下标来获取它们
 4. 元组的长度是固定的，可以通过下标顺序或者名字来获取元素
 5. 字典是通过key来存储数据，可以通过key来获取元素
 6.枚举是将一些相关联的元素组合在一起，这样你就不会拼写错误
 7.你可以给枚举赋上整型值或者字符串，或者添加关联值来存储额外的信息，
 */













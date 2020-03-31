//
//  ContentView.swift
//  FirstProject
//
//  Created by yeenbin Macbook Pro on 2020/3/27.
//  Copyright © 2020 yeenbin Macbook Pro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var tapCount = 0
    @State  var name = ""
    let students = ["Harry","Hermione","Ron"]
    @State private var selectedStudent = 0
    var body: some View {
        // 添加导航栏视图 NavigationView
        NavigationView {
            // 在容器中添加数量限制为10 ，再添加第11个就会报错，
            // 这个原则在SwiftUI中很多地方出现
            Form {
                // Group帮助解除10的限制，但是不会让单元格看起来不一样，需要使用Section让单元格有节的区分
                Group {
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                }
                
                Section {
                    VStack {
                        Picker("Select your student",selection: $selectedStudent) {
                            ForEach(0 ..< students.count) {
                                Text(self.students[$0])
                            }
                        }
                    }
                }
                
                Section {
                    // 双向绑定需要用到$符号，如果在属性前面有$符修饰，表明该属性被双向绑定，既可读也可写
                    TextField("Enter your name",text: $name)
                    Text("Your name is \(name)")
                }
                
                Section {
                    // 循环创建视图 ForEach
                    ForEach(0 ..< 5) {
                        Text("Row \($0)")
                    }
                    
                    /*
                     ForEach 在创建PickerView的时候特别有用
                     1. 拥有一个数组可能学生的名字
                     */
                     
                }
                
                Section {
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                }
                
            }
                
                // 添加导航栏标题
                .navigationBarTitle("SwiftUI", displayMode: .inline)
            
            //
            Button("Tap Count: \(tapCount)") {
                self.tapCount += 1
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

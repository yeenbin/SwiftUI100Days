//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by yeenbin Macbook Pro on 2020/4/28.
//  Copyright © 2020 yeenbin Macbook Pro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //        VStack(alignment: .trailing, spacing: 50) {
        ////            Color.red.frame(width: 100, height: 100, alignment: .leading)
        //            Text("Hello, World!")
        //            Text("this is another view")
        //        }
        
        //        VStack {
        //            Text("first")
        //            Text("second")
        //            Text("third")
        //            Spacer()
        //        }
        
        // 3.ZStack
        
        //        ZStack {
        //            Text("Hello world!")
        //            Text("this is another view")
        //        }
        
        //2.1 给文本修饰颜色
        //        ZStack {
        //            Text("Your content")
        //                .background(Color.red)
        //        }
        
        
        //        2.2给ZStack修饰颜色
        //        ZStack {
        //            Color.red
        //            Text("Your content")
        //        }
        
        // 2.3
//        ZStack {
//            Color.red.frame(width: 200 ,height: 200)
//            Text("Your content")
//        }
        
        //2.4
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            Text("Your content")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

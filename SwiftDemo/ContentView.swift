//
//  ContentView.swift
//  SwiftDemo
//
//  Created by Oxiny on 2024/1/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("今天吃什么?")
                .font(.headline)
            Text("What to eat today?")
                .font(.system(.headline, design: .rounded))
        }
        .foregroundColor(Color.orange)
        .padding()
        .contextMenu(){
            HStack{
                Button(action: {
                    let pasteboard = UIPasteboard.general
                    pasteboard.string = "今天吃什么?"
                }){
                    HStack {
                        List {
                            Text("chicken")
                            Text("fucking cazzy Thursday")
                        }
                    }
                }
            }
        }
    }
}

struct ContentView2: View {
    var body: some View {
        VStack{
            Text("hello world")
                .padding()
            Circle()
                .padding()
        }
        
    }
}

struct DemoView_Previews: PreviewProvider{
    static var previews: some View{
        Group{
            ContentView()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.light)
            ContentView()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}


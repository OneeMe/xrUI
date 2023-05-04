//
//  ContentView.swift
//  xrUIDemo
//
//  Created by 任宇杰 on 2023/2/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LazyHStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!").imageScale(.large)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

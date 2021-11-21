//
//  ContentView.swift
//  SwiftUILayout
//
//  Created by Manjit on 09/10/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("test")
                }.frame(maxWidth: .infinity, alignment: .leading)
            }.frame(maxHeight: .infinity, alignment: .top).background(Color.red)
            Text("Hello")
            Text("Hello")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

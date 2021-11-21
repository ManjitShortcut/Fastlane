//
//  TabView3.swift
//  SwiftUILayout
//
//  Created by Manjit on 22/10/2021.
//
import SwiftUI
struct TabView3: View {
    var body: some View {
            ZStack {
                Circle()
                    .frame(width: 200, height: 200, alignment: .center)
                    .foregroundColor(.blue)
                Text("3")
                    .foregroundColor(.white)
                    .font(.system(size: 70,weight: .bold))
            }.navigationTitle("Cart")
    }
}
struct TabView3_Previews: PreviewProvider {
    static var previews: some View {
        TabView3()
    }
}


import SwiftUI
struct TabView4: View {
    var body: some View {
            ZStack {
                Circle()
                    .frame(width: 200, height: 200, alignment: .center)
                    .foregroundColor(.blue)
                Text("4")
                    .foregroundColor(.white)
                    .font(.system(size: 70,weight: .bold))
            }.navigationTitle("Cart")
    }
}
struct TabView4_Previews: PreviewProvider {
    static var previews: some View {
        TabView3()
    }
}

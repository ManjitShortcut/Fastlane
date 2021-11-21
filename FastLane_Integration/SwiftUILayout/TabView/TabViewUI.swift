//
//  TabView.swift
//  SwiftUILayout
//
//  Created by Manjit on 22/10/2021.
//

import SwiftUI

struct TabViewUI: View {
    var body: some View {
        TabView {
            TabView1().tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            TabView2().tabItem {
                Image(systemName: "person")
                Text("Setting")
            }
            TabView3().tabItem {
                Image(systemName: "bag")
                Text("Cart")
            }
        }.accentColor(.red).onAppear {
            UITabBar.appearance().isHidden = false
        }
    }
}

struct TabViewUI_Previews: PreviewProvider {
    static var previews: some View {
        TabViewUI()
    }
}

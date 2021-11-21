//
//  MainLayout.swift
//  SwiftUILayout
//
//  Created by Manjit on 22/10/2021.
//

import SwiftUI

struct MainLayout: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("TabView") {
                    TabViewLayout()
                }.accessibilityIdentifier("Tabview")
                NavigationLink("GridView") {
                    GridViewUI()
                }.accessibilityIdentifier("GridView")
                NavigationLink("PageView") {
                    PageViewLayout()
                }.accessibilityIdentifier("PageView")
                NavigationLink("Text") {
                    SwiftTextLayout()
                }
                NavigationLink("Shape"){
                 ShapeLayout()
                }.accessibilityIdentifier("Shape")
                NavigationLink("Shadow"){
                    ShadowView()
                }.accessibilityIdentifier("Shadow")
            }.accessibilityIdentifier("ListView") .navigationTitle("Layout")
        }
    }
}

struct MainLayout_Previews: PreviewProvider {
    static var previews: some View {
        MainLayout()
    }
}

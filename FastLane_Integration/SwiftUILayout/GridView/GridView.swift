//
//  GridView.swift
//  SwiftUILayout
//
//  Created by Manjit on 14/10/2021.
//

import Foundation
import SwiftUI
struct GridViewUI : View {
    var body: some View {
            List {
                NavigationLink("Flexible - Grid") {
                    FlexibleLayout()
                }
                NavigationLink("Fixed- Grid") {
                    FixedLayout()
                }
                NavigationLink("Adaptive - Grid") {
                    AdativeLayout()
                }
                NavigationLink("Fixed+Adaptive") {
                    Fixed_AdativeGrid()
                }
                NavigationLink("Fixed+Flexible") {
                    Fixed_Flexible()
                }
                NavigationLink("H-Grid") {
                    HGrid()
                }
                NavigationLink("MultipleGrid") {
                    MultipleGrid()
                }
                NavigationLink("Header Grid View") {
                    GridWithHeaderView()
                }
            }.navigationTitle("Grid View")
    }
}

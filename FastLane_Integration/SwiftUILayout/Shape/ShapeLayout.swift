//
//  ShapeLayout.swift
//  SwiftUILayout
//
//  Created by Manjit on 01/11/2021.
//

import SwiftUI

struct ShapeLayout: View {
    var body: some View {
        List{
            NavigationLink("Circle"){
                CircleShape()
            }
            NavigationLink("Trangle"){
                TrangleShape().padding()
            }
            NavigationLink("Rectangle"){
                RectangleShape()
            }
            NavigationLink("Square"){
                RectangleShape()
            }
            NavigationLink("Polygon"){
                OtherShape()
            }
            NavigationLink("Circular Progress View") {
                CircularProgressView()
            }
            NavigationLink("Curve") {
                CurveView()
            }
            NavigationLink("Wave Shape") {
                WaveShape()
            }
        }.navigationTitle("Shape")
    }
}

struct ShapeLayout_Previews: PreviewProvider {
    static var previews: some View {
        ShapeLayout()
    }
}

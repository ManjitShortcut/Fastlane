//
//  RectangleShape.swift
//  SwiftUILayout
//
//  Created by Manjit on 01/11/2021.
//

import SwiftUI
struct RectangleShape: View {
    var body: some View {
        ScrollView {
            VStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 300, height: 250)
                Rectangle()
                    .strokeBorder(Color.blue,style: StrokeStyle(lineWidth: 5, lineCap:.butt, dash: [5], dashPhase: 0))
                    .frame(width: 300, height: 200)
            }
        }
    }
}
struct RectangleShape_Previews: PreviewProvider {
    static var previews: some View {
        RectangleShape()
    }
}

//
//  Circle.swift
//  SwiftUILayout
//
//  Created by Manjit on 01/11/2021.
//

import SwiftUI

struct CircleShape: View {
    @State private var progress: CGFloat = 0

    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text("CircleWith fill color")
                    Circle()
                        .fill(Color.red).frame(width: 200, height: 200, alignment: .center)
                }
                VStack {
                    Text("CircleWith stroke border color and line width with inner color")
                    Circle()
                        .strokeBorder(Color.blue,lineWidth: 20)
                        .background(Circle().foregroundColor(Color.red)).frame(width: 200, height: 200, alignment: .center)
                }
                VStack {
                    Text("CircleWith stroke border  Line cap ***Square*** and line dash 30")
                    Circle()
                        .strokeBorder(Color.blue,style: StrokeStyle(lineWidth: 20, lineCap: .square, dash: [30], dashPhase: 0) ).frame(width: 300, height: 300, alignment: .center)
                    
                    Text("CircleWith stroke border  Line cap ***Rround*** and line dash 30")
                    Circle()
                        .strokeBorder(Color.blue,style: StrokeStyle(lineWidth: 20, lineCap:.round, dash: [30], dashPhase: 0) ).frame(width: 300, height: 300, alignment: .center)
                    
                    Text("CircleWith stroke border  Line cap ***Butt*** and line dash 30")
                    Circle()
                        .strokeBorder(Color.blue,style: StrokeStyle(lineWidth: 20, lineCap:.butt, dash: [30], dashPhase: 0) ).frame(width: 300, height: 300, alignment: .center)
                }
                VStack {
                    
                    Text("Trim")
                    Text("Trim with border color")
                    ZStack {
                        Circle()
                            .stroke(lineWidth: 20.0)
                                    .opacity(0.3)
                                    .foregroundColor(Color.red)
                        Circle()
                            .trim(from: 0, to: progress)
                            .stroke(Color.blue,style: StrokeStyle(lineWidth: 20, lineCap:.round,lineJoin: .round))
                    }.frame(width: 300, height: 300)
                    Circle()
                        .trim(from: 0, to: progress)
                        .fill(Color.red)
                        .frame(width: 300, height: 300)
                    Spacer()
                    Text("\(progress)")
                    Slider(value: $progress)

                }.padding()
            }
        }.navigationTitle("Circle")
    }
}

struct CircleShape_Previews: PreviewProvider {
    static var previews: some View {
        CircleShape()
    }
}

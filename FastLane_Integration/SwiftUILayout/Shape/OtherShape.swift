//
//  PolygonShape.swift
//  SwiftUILayout
//
//  Created by Manjit on 01/11/2021.
//

import SwiftUI

struct OtherShape: View {
    @State var animation: Bool =  false
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack {
                    Text("Trapisym")
                    Trapisym()
                        .fill(Color.red)
                        .frame(height:300)
                }
                VStack {
                    Text("TrapisymWithClips")
                    Image("coffee-9")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                        .clipShape(Trapisym(offset: 0.65))
                        .overlay(Trapisym(offset: 0.65).stroke(Color.red,lineWidth: 5))
                }
            }
            
        }.navigationBarTitle("Other Shape")
    }
}

struct OtherShape_Previews: PreviewProvider {
    static var previews: some View {
        OtherShape()
    }
}


struct Trapisym: Shape {
    var offset: CGFloat = 0.75
    var animatableData:  CGFloat {
        get {return offset}
        set{offset = newValue}
    }
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0, y: rect.maxY*offset))
        path.closeSubpath()
        return path
    }
}



//
//  WaveShape.swift
//  SwiftUILayout
//
//  Created by Manjit on 09/11/2021.
//

import SwiftUI

struct WaveShape: View {
    @State var animation: Bool =  false
    var body: some View {
            VStack {
                ZStack(alignment: .top) {
                    WaveForm(offset: animation ? 0.5: -0.5).fill(Color.green).frame(height: 150).shadow(radius: 4)
                        .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                    WaveForm(offset: animation ? -0.5: 0.5).fill(Color.red).frame(height: 100)
                        .opacity(0.5)
                        .shadow(radius: 4).animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                }
                Button {
                    animation.toggle()
                } label: {
                    Text("Animate wave")
                }
        }
       
        }
    
}
struct WaveForm: Shape {
    var offset:CGFloat = 0.5
    var animatableData: CGFloat {
        get {
            return offset
        } set {
            offset =  newValue
        }
    }
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addCurve(to: CGPoint(x: 0, y: rect.maxY), control1: CGPoint(x: rect.maxX * 0.75, y: rect.maxY - (rect.maxY * offset)), control2: CGPoint(x: rect.maxX * 0.25, y: rect.maxY  + (rect.maxY*offset)))
        path.closeSubpath()
        return  path
    }
}

struct WaveShape_Previews: PreviewProvider {
    static var previews: some View {
        WaveForm().stroke(Color.red,lineWidth: 5).frame(height:200)
    }
}

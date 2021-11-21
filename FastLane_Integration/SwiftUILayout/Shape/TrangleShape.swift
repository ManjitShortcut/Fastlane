//
//  Trangle_Shape.swift
//  SwiftUILayout
//
//  Created by Manjit on 01/11/2021.
//

import SwiftUI

struct TrangleShape: View {
    @State private var progress: CGFloat = 0
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack {
                    Text("Trangle shape")
                    Trangle().fill(Color.red)
                        .frame(width: 300, height: 300).navigationTitle("Trangle")
                }
                VStack {
                    Text("Trangle clip")
                    Image("coffee-9")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                        .clipShape(Trangle())
                }
            }
           
        }.navigationTitle("Tranble")
       
    }
}

struct TrangleShape_Previews: PreviewProvider {
    static var previews: some View {
        TrangleShape()
    }
}


struct Trangle: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX,y:rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX,y:rect.maxY))
        path.closeSubpath()
        return path
    }
    
}

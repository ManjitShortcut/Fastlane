//
//  CurveView.swift
//  SwiftUILayout
//
//  Created by Manjit on 09/11/2021.
//
import SwiftUI
struct CurveView: View {
    
    
    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea(.all)
            VStack {
                CurveShape(offset: 30)
                    .fill(Color.blue)
                    .frame(height:100)
                    .shadow(radius: 8)
                Image("coffee-9")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 100)
                    .clipShape(CurveShape(offset: 30))
                    .shadow(radius: 8)
                Spacer()
            }
        }.navigationTitle("Curve View")
    }
}
struct CurveShape: Shape {
    var offset:CGFloat  = 50
    func path(in rect: CGRect) -> Path {
        var path =  Path()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY-offset))
        path.addQuadCurve(to: CGPoint(x: 0, y: rect.maxY-offset), control: CGPoint(x: rect.midX, y: rect.maxY+offset))
        path.closeSubpath()
        return path
    }
}


struct CurveView_Previews: PreviewProvider {
    static var previews: some View {
        CurveView()
    }
}

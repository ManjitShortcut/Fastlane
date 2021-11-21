//
//  ShadowView.swift
//  SwiftUILayout
//
//  Created by Manjit on 10/11/2021.
//

import SwiftUI

struct ShadowView: View {
    @State var shadowRadius: CGFloat = 5
    @State var yOffset: CGFloat = 5
    @State var xOffset: CGFloat = 5
    @State var progressRadius: Float = 0
    @State var progressYOffset: Float = 0
    @State var progressXOffset: Float = 0

    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                VStack {
                    Text("Radius: \(progressRadius)")
                    Slider(value: $progressRadius)
                    
                    Text("X Offset: \(progressXOffset)")
                    Slider(value: $progressXOffset)

                    Text("Y Offset:\(progressYOffset)")
                    Slider(value: $progressYOffset)

                }.padding()
                VStack (spacing: 20) {
                    Text("Normal shadow")
                    Circle()
                        .fill(Color.red)
                        .frame(height:60)
                        .shadow(color: Color.green, radius: CGFloat(progressRadius)*10+5)
                }
                VStack{
                    Text("Shadow with deapth")
                    HStack {
                        Circle()
                            .fill(Color.red)
                            .frame(height:70)
                            .shadow(color: Color.green, radius: CGFloat(progressRadius)*10+5)
                        Circle()
                            .fill(Color.red)
                            .frame(height:70)
                            .shadow(color: Color.green, radius: CGFloat(progressRadius)*10+5)
                        Circle()
                            .fill(Color.red)
                            .frame(height:70)
                            .shadow(color: Color.green, radius: CGFloat(progressRadius)*10+5 )
                    }
                }
                VStack{
                    Text("Shadow with color")
                    HStack {
                        Circle()
                            .fill(Color.red)
                            .frame(height:70)
                            .shadow(color: Color.green, radius: CGFloat(progressRadius)*10+5)
                        Circle()
                            .fill(Color.red)
                            .frame(height:70)
                            .shadow(color: Color.green, radius: CGFloat(progressRadius)*10+5)
                        Circle()
                            .fill(Color.red)
                            .frame(height:70)
                            .shadow(color: Color.green, radius: CGFloat(progressRadius)*10+5)
                    }
                }
            }
            
            
        }.background(Color.orange).navigationTitle("Shadow")
    }
}

struct ShadowView_Previews: PreviewProvider {
    static var previews: some View {
        ShadowView()
    }
}

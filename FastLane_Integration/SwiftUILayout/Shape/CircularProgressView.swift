//
//  CircularProgressView.swift
//  SwiftUILayout
//
//  Created by Manjit on 04/11/2021.
//

import SwiftUI

struct CircularProgressView: View {
    @State private var progress: CGFloat = 0
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke(lineWidth: 20.0)
                    .opacity(0.3)
                    .foregroundColor(Color.red)
                
                Circle()
                    .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                    .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color.red)
                    .rotationEffect(Angle(degrees: 270.0))
                    .animation(.linear)

            }
            Text(String(format: "%.0f %%", min(self.progress, 1.0)*100.0))
                .font(.largeTitle)
                .bold()

            Slider(value: $progress)
        }.padding()
      }
}



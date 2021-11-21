//
//  TabButton.swift
//  SwiftUILayout
//
//  Created by Manjit on 22/10/2021.
//

import SwiftUI
struct TabButton: View {
    var imagName: String
    @Binding var selected: String
    var animation: Namespace.ID
    var body: some View {
        Button(action:{
            withAnimation(.spring()) {
                self.selected = self.imagName
            }
        }){
            VStack (spacing:15){
                Image(systemName: imagName)
                    .font(.system(size: 25))
                    .foregroundColor(selected == imagName ? .red : .gray)
                ZStack {
                    Circle()
                        .fill(Color.clear)
                        .frame(width: 8, height: 8)
                    if selected == imagName {
                        Circle()
                            .fill(.red)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                            .frame(width: 8, height: 8)
                    }
                }
            }
        }
    }
}


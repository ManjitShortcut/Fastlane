//
//  TabView2.swift
//  SwiftUILayout
//
//  Created by Manjit on 22/10/2021.
//

import SwiftUI

struct TabView2: View {
    var body: some View {
            ZStack {
                Circle()
                    .frame(width: 200, height: 200, alignment: .center)
                    .foregroundColor(.red)
                Text("2")
                    .foregroundColor(.white)
                    .font(.system(size: 70,weight: .bold))
            }.navigationTitle("Setting")
    }
}

struct TabView2_Previews: PreviewProvider {
    static var previews: some View {
        TabView2()
    }
}

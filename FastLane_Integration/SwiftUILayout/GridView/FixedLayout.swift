//
//  FixedLayout.swift
//  SwiftUILayout
//
//  Created by Manjit on 14/10/2021.
//

import SwiftUI

struct FixedLayout: View {
    @State var numberOfItemOnRow = 1
    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble"]
    private var colors: [Color] = [.yellow, .purple, .green,.yellow, .purple, .green,.yellow, .purple, .green]
    let grid = [GridItem(.fixed(150),spacing: 0),GridItem(.fixed(300),spacing: 0)]
    var body: some View {
        VStack (spacing: 15) {
            Text("When you use Fixed grid layout?").foregroundColor(Color.red).font(.title).fontWeight(.bold).frame(maxWidth: .infinity,alignment: .topLeading).padding(.horizontal)
            Text("If you know the fixed size of grid in a column then used fixed grid layout.").foregroundColor(Color.black).font(.body)
            ScrollView {
                LazyVGrid(columns: grid, spacing: 20) {
                    ForEach((0...8), id: \.self) { item in
                        VStack {
                            Image(systemName: symbols[item])
                                .font(.system(size: 30))
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50,  alignment:.center)
                                .background(colors[item])
                                .cornerRadius(10)
                            Text("\(item)")
                        }
                    }
                }
            }.frame(maxHeight: .infinity, alignment: .leading)
    
        }.frame(maxWidth: .infinity, alignment: .leading)
            .navigationBarTitle("Fixed Grid")
    }
}

struct FixedLayout_Previews: PreviewProvider {
    static var previews: some View {
        FixedLayout()
    }
}

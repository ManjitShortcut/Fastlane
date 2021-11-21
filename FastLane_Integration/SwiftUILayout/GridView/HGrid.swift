//
//  HGrid.swift
//  SwiftUILayout
//
//  Created by Manjit on 16/10/2021.
//
import SwiftUI
struct HGrid: View {
    @State var numberOfItemOnRow = 1
    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble"]
    private var colors: [Color] = [.yellow, .purple, .green,.yellow, .purple, .green,.yellow, .purple, .green]
    let grid = [GridItem(.flexible(minimum: 100),spacing: 0),GridItem(.fixed(120),spacing: 0),GridItem(.adaptive(minimum: 120))]
    var body: some View {
        VStack (spacing: 15) {
            ScrollView(Axis.Set.horizontal, showsIndicators: false) {
                LazyHGrid(rows: grid, spacing: 20) {
                    ForEach((0...1000), id: \.self) {
                        Image(systemName: symbols[$0 % symbols.count])
                                .font(.system(size: 30))
                                .frame(minWidth: 100,maxWidth: .infinity, maxHeight: .infinity,  alignment:.center)
                                .background(colors[$0 % colors.count])
                                .cornerRadius(10)
                    }
                }.padding()
            }.frame(maxHeight: .infinity, alignment: .leading)
    
        }.frame(maxWidth: .infinity, alignment: .leading)
            .navigationBarTitle("Hgrid")
    }
}

struct HGrid_Previews: PreviewProvider {
    static var previews: some View {
        HGrid()
    }
}

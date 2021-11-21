//
//  GridWithHeaderView.swift
//  SwiftUILayout
//
//  Created by Manjit on 18/10/2021.
//

import SwiftUI
struct GridWithHeaderView: View {
    @State var numberOfItemOnRow = 1
    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble"]
    private var colors: [Color] = [.yellow, .purple, .green,.yellow, .purple, .green,.yellow, .purple, .green]
    let grid = [GridItem(.flexible(minimum: 50),spacing: 0)]
    var body: some View {
        VStack (spacing: 15) {
            ScrollView {
                LazyVGrid(columns: grid, spacing: 20, pinnedViews: [.sectionHeaders]) {
                    Section(header: Text("Section 1")) {
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
                    
                    Section(header: Text("Section 2")) {
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
                   
                }
            }.frame(maxHeight: .infinity, alignment: .leading)
    
        }.frame(maxWidth: .infinity, alignment: .leading)
            .navigationBarTitle("Header Grid View")
    }
}

struct GridWithHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        GridWithHeaderView()
    }
}

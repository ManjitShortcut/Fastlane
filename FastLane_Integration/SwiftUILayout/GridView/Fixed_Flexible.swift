//
//  Fixed_Flexible.swift
//  SwiftUILayout
//
//  Created by Manjit on 15/10/2021.
//
import SwiftUI
struct Fixed_Flexible: View {
    @State var toggle: Bool =  false
    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble"]
    private var colors: [Color] = [.yellow, .purple, .green,.yellow, .purple, .green,.yellow, .purple, .green]
    let grid1 = [GridItem(.flexible(minimum: 50),spacing: 0),GridItem(.fixed(200),spacing: 0),GridItem(.flexible(minimum: 50),spacing: 0)]
    let grid2 = [GridItem(.fixed(100),spacing: 0),GridItem(.flexible(minimum: 50),spacing: 0),GridItem(.fixed(100),spacing: 0)]
    var body: some View {
        VStack (spacing: 15) {
            Text(toggle ?"Here the grid layout first one flexible and second one is fixed and  third one is flexible.\n Ex: ***[GridItem(.flexible(minimum: 50),spacing: 0),GridItem(.fixed(200),spacing: 0),GridItem(.flexible(minimum: 50),spacing: 0)]*** ": "Here the grid layout first one fixed and second one Flexible and third fixed .\n Ex: ***[GridItem(.fixed(150),spacing: 0),GridItem(.flexible(minimum: 50),spacing: 0),GridItem(.fixed(150),spacing: 0)]*** ").foregroundColor(Color.black).font(.body)
            ScrollView {
                LazyVGrid(columns: toggle ? grid1 : grid2 , spacing: 20) {
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
            .navigationBarTitle("Fixed + Flexible Grid")
            .navigationBarItems(trailing: Button(action: {
                withAnimation {
                    toggle.toggle()
                }
            }, label: {
                if toggle ==  true {
                    Text("Fixed+ Adative")
                } else {
                    Text("Adative+Fixed")
                }
            }))
    }
}

struct Fixed_Flexible_Previews: PreviewProvider {
    static var previews: some View {
        Fixed_Flexible()
    }
}

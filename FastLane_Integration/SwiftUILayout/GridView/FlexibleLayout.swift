//
//  FlexibleLayput.swift
//  SwiftUILayout
//
//  Created by Manjit on 14/10/2021.
//

import SwiftUI
struct FlexibleLayout: View {
    let items =  Array(1...10).map({"Element \($0)"})
    @State var numberOfItemOnRow = 1
    
    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
    private var colors: [Color] = [.yellow, .purple, .green]
    
    var body: some View {
        VStack (spacing: 15) {
            Text("When you use flexible grid layout?").foregroundColor(Color.red).font(.title).fontWeight(.bold).foregroundColor(Color.red).font(.title).fontWeight(.bold).frame(maxWidth: .infinity,alignment: .topLeading).padding(.horizontal).padding(.horizontal)
            Text("If you know the fixed number of grid in a column then use Flexible grid layout. ").foregroundColor(Color.black).font(.body)
                .padding(.horizontal)
            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 0), count:numberOfItemOnRow), spacing: 20) {
                    ForEach((0...10), id: \.self) {
                        Image(systemName: symbols[$0 % symbols.count])
                            .font(.system(size: 30))
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50,  alignment:.center)
                            .background(colors[$0 % colors.count])
                            .cornerRadius(10)
                    }
                }
            }.frame(maxHeight: .infinity, alignment: .leading)
            VStack(spacing: 15) {
                Text("Here the number of grid in row is \(self.numberOfItemOnRow). ").foregroundColor(Color.black).font(.footnote)
                    .padding(.horizontal)
            }
        }.frame(maxWidth: .infinity, alignment: .leading)
            .navigationBarTitle("No of grid In a row")
            .navigationBarItems(trailing:
                                    HStack {
                Button(action: {
                    withAnimation {
                        self.numberOfItemOnRow += 1
                    }
                }) {
                    Image(systemName: "plus.app").resizable()
                }
                Button(action: {
                    withAnimation {
                        self.numberOfItemOnRow += -1
                    }
                }) {
                    Image(systemName: "minus.square").resizable()
                }
            })
    }
}

struct FlexibleLayout_Previews: PreviewProvider {
    static var previews: some View {
        FlexibleLayout()
    }
}

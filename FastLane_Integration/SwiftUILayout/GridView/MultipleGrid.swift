//
//  MultipleGrid.swift
//  SwiftUILayout
//
//  Created by Manjit on 18/10/2021.
//

import SwiftUI

struct Cafe: Identifiable {
    var id = UUID()
    var image: String
    var coffeePhotos: [Photo] = []
}
struct Photo: Identifiable {
    var id = UUID()
    var name: String
}

struct MultipleGrid: View {
    let sampleCafes: [Cafe] = {
        var cafes = (1...18).map { Cafe(image: "cafe-\($0)") }
        for index in cafes.indices {
            let randomNumber = Int.random(in: (2...12))
            cafes[index].coffeePhotos = (1...randomNumber).map { Photo(name: "coffee-\($0)") }
        }
        return cafes
    }()
    @State var gridLayout: [GridItem] = [GridItem()]    
    var body: some View {
            ScrollView {
                LazyVGrid(columns: gridLayout,spacing: 10) {
                    ForEach(sampleCafes) { cafe in
                        Image(cafe.image)
                            .resizable()
                            .scaledToFill()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: 200, alignment: .center)
                            .cornerRadius(10)
                            .shadow(color: Color.primary.opacity(0.3), radius: 1)

                        LazyVGrid(columns: [GridItem(.adaptive(minimum:50))],spacing: 10) {
                            ForEach(cafe.coffeePhotos) { photos in
                                Image(photos.name)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .frame(height: 50, alignment: .center)
                                    .cornerRadius(10)
                            }
                        }
                    }
                }.padding(.all,10)
            }.navigationTitle("Coffee Feed").toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        self.gridLayout = Array(repeating: .init(.flexible()), count: self.gridLayout.count % 4 + 1)
                    } label: {
                        Image(systemName: "square.grid.2x2")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                }
            }
    }
}

struct MultipleGrid_Previews: PreviewProvider {
    static var previews: some View {
        MultipleGrid()
    }
}

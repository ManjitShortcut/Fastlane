//
//  PageIndicator.swift
//  SwiftUILayout
//
//  Created by Manjit on 25/10/2021.
//

import SwiftUI
struct PageIndicator: View {
    let totalPages: Int
    let currentPage: Int
    var body: some View {
        HStack(spacing: 15){
            ForEach(0..<totalPages) { index in
                Capsule().fill(Color.red)
                    .frame(width: index == currentPage ? 20 : 7,height: 7).id(index)
            }
        }
    }
    func shouldShowIndex(_ index: Int) -> Bool {
        ((currentPage - 1)...(currentPage + 1)).contains(index)
    }
}


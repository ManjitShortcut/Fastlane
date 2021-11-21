//
//  CustomCorner.swift
//  SwiftUILayout
//
//  Created by Manjit on 23/10/2021.
//

import SwiftUI

struct CustomCorner: Shape {
    var corners: UIRectCorner
    func path(in rect: CGRect) -> Path {
        let path =  UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: rect.height/2, height: rect.height/2))
        return Path(path.cgPath)
    }
}


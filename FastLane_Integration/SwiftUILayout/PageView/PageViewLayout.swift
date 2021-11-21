//
//  PageViewLayout.swift
//  SwiftUILayout
//
//  Created by Manjit on 23/10/2021.
//

import SwiftUI

struct PageViewLayout: View {
    var body: some View {
        List{
            NavigationLink("Normal PageView") {
                NormalPageView()
            }
            NavigationLink("Customise PageView") {
                CustomPageView()
            }
        }.navigationTitle("PageView")
        
    }
}

struct PageViewLayout_Previews: PreviewProvider {
    static var previews: some View {
        PageViewLayout()
    }
}

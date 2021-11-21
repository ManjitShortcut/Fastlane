//
//  TabViewLayout.swift
//  SwiftUILayout
//
//  Created by Manjit on 22/10/2021.
//

import SwiftUI

struct TabViewLayout: View {
    var body: some View {
        List{
            NavigationLink("Normal Tabview") {
                TabViewUI()
            }
            NavigationLink("Customise Tabview") {
                CustomTabView()
            }
        }.navigationTitle("TabView")
    }
}

struct TabViewLayout_Previews: PreviewProvider {
    static var previews: some View {
        TabViewLayout()
    }
}

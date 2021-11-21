//
//  CustomTabView.swift
//  SwiftUILayout
//
//  Created by Manjit on 22/10/2021.
//

import SwiftUI

struct CustomTabView: View {
    @State var currentTab: String = "house"
    var tabs = ["house","book","suit.heart","person"]
    @Namespace var animation

    init() {
        UITabBar.appearance().isHidden = true
        
    }
    
    // safe area
    @State var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView(selection: $currentTab) {
                TabView1().tag(tabs[0])
                TabView2().tag(tabs[1])
                TabView3().tag(tabs[2])
                TabView4().tag(tabs[3])
            }
            HStack(spacing: 35){
                ForEach(tabs,id:\.self) { image in
                    TabButton(imagName: image, selected: $currentTab, animation: animation)
                }
            }.padding(.horizontal,35)
                .padding(.top)
                .padding(.bottom,safeArea?.bottom == 0 ? safeArea?.bottom:15)
                .background(
                    LinearGradient(gradient: .init(colors: [Color.black,Color.gray]),startPoint:.top,endPoint: .bottom)
                ).clipShape(CustomCorner(corners: .allCorners))
        }.navigationBarHidden(true).ignoresSafeArea(.all,edges: .bottom)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}

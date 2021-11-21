//
//  CustomPageView.swift
//  SwiftUILayout
//
//  Created by Manjit on 23/10/2021.
//
import SwiftUI
struct CustomPageView: View {
    @State var pageSelection = 1
    var body: some View {
        VStack {
            TabView(selection:$pageSelection) {
                OnboardingView(systemImage: "scribble.variable", title: "Title 1", description: "This is description of onboarding screen").tag(0)
                OnboardingView(systemImage: "dial.min.fill", title: "Title 2", description: "This is description of onboarding screen2").tag(1)
                OnboardingView(systemImage: "paintpalette.fill", title: "Title 3", description: "This is description of onboarding screen3").tag(2)
            }.tabViewStyle(.page(indexDisplayMode: .never))
                .ignoresSafeArea()
                .overlay(
                    PageIndicator(totalPages: 3, currentPage: pageSelection),alignment: .bottom)
        }
        }
}

struct CustomPageView_Previews: PreviewProvider {
    static var previews: some View {
        CustomPageView()
    }
}

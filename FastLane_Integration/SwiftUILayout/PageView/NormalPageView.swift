//
//  NormalPageView.swift
//  SwiftUILayout
//
//  Created by Manjit on 23/10/2021.
//

import SwiftUI

struct NormalPageView: View {
    @State var pageSelection = 0
    var body: some View {
        TabView() {
            OnboardingView(systemImage: "scribble.variable", title: "Title 1", description: "This is description of onboarding screen")
            OnboardingView(systemImage: "dial.min.fill", title: "Title 2", description: "This is description of onboarding screen2")
            OnboardingView(systemImage: "paintpalette.fill", title: "Title 2", description: "This is description of onboarding screen3")
        }.tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode:.always))
    }
}

struct OnboardingView: View {
    let systemImage: String
    let title: String
    let description: String
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: systemImage)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
            Text(title).font(.title).bold()
            Text(description)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
        }.padding(.horizontal,40)
        
    }
}

struct NormalPageView_Previews: PreviewProvider {
    static var previews: some View {
        NormalPageView()
    }
}

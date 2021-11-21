//
//  SwiftUIView.swift
//  SwiftUILayout
//
//  Created by Manjit on 01/11/2021.
//

import SwiftUI

struct SwiftTextLayout: View {
    var body: some View {
        VStack {
            Text("Place Holder").font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.green)

            Text("Underline").font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.green)
                .underline(true, color: .red)
            
            
            Text("Strike trough").font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.green)
                .strikethrough(true, color: .black)
            
            Text("Multiline text is define. I am creating the text. It has multiple .I ma checking the number of line. Multiline text is define. I am creating the text. It has multiple .I ma checking the number of line.Multiline text is define. I am creating the text. It has multiple .I ma checking the number of line.").multilineTextAlignment(.center)
                .font(.body)
                .foregroundColor(Color.black)
    
            Text("Multiline Text with frame").fontWeight(.bold).frame( maxWidth:.infinity, alignment: .leading)
            Text("Multiline text is define. I am creating the text. It has multiple .I ma checking the number of line. Multiline text is define. I am creating the text. It has multiple .I ma checking the number of line.Multiline text is define. I am creating the text. It has multiple .I ma checking the number of line.").font(.body)
                .fontWeight(.thin)
                .foregroundColor(Color.black).frame(width: 300, height: 20,alignment: .leading).minimumScaleFactor(0.1)
        }.padding()
        .navigationTitle("Text")
            
    }
}

struct SwiftTextLayout_Previews: PreviewProvider {
    static var previews: some View {
        SwiftTextLayout()
    }
}

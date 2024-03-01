//
//  Text.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-03-01.
//

import SwiftUI

struct TextLabel: View {
    var body: some View {
        Text("Hello World, I am Learning SwiftUI.")
            //.font(.title)
            .fontWeight(.thin)
            .foregroundColor(Color.green)
            .multilineTextAlignment(.leading)
            .lineLimit(12)
            .padding(.top)
            .frame(width: 100, height: 180, alignment: .leading)
            //.fontDesign(.monospaced)
            .font(Font.system(size: 24, design: .serif))
            .strikethrough(true, color: .pink)
            .underline(true, color: .black)
            .italic()
            .bold()
            .baselineOffset(10) // increase or decrease space b/n lines
            .kerning(4) // increase or decrease space b/n character
            .minimumScaleFactor(0.1)
            .border(.blue)
            
    }
}

#Preview {
    TextLabel()
}

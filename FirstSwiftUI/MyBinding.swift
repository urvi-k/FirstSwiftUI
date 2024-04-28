//
//  MyBinding.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-04-28.
//

import SwiftUI

struct MyBinding: View {
    @State var bgColor: Color = .mint
    @State var title: String = "old text!"
    
    var body: some View {
        ZStack {
            //bgLayer
            bgColor.ignoresSafeArea()
            
            //FgLayer
            ButtonView(bgColor: $bgColor, title: $title)
        }
    }
}

#Preview {
    MyBinding()
}

struct ButtonView: View {
    
    @Binding var bgColor: Color
    @Binding var title: String
    @State var buttonColor: Color = .black
    
    var body: some View {
        VStack {
            Text(title)
                .foregroundColor(.white)
                .font(.largeTitle)
            
            Button(action: {
                bgColor = .orange
                buttonColor = .pink
                title = "new text!"
            }, label: {
                Text("Press me")
                    .foregroundColor(.white)
                    .padding(20)
                    .background(buttonColor)
                    .cornerRadius(10)
            })
            
        }
    }
}

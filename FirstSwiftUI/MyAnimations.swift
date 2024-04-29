//
//  MyAnimations.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-04-29.
//

import SwiftUI

struct MyAnimations: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            
            
            Button("Go") {
                withAnimation(Animation.default.repeatForever(autoreverses: true)) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 100 : 50)
                .fill(isAnimated ? .mint : .indigo)
                .rotationEffect(.degrees(isAnimated ? 360 : 0))
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .offset(y: isAnimated ? 300 : 0)
                
               // .animation(Animation.default.repeatForever(autoreverses: true), value: 0.3) // not working
            Spacer()
        }
    }
}

#Preview {
    MyAnimations()
}

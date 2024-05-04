//
//  MyAnimations.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-04-29.
//

import SwiftUI

struct MyAnimations: View {
    
    @State var isAnimated: Bool = false
    @State var isAnimated2: Bool = false
    
    var body: some View {
        VStack {
            
            
            Button("Go") {
               // withAnimation(Animation.default.repeatForever(autoreverses: true)) {
                    isAnimated.toggle()
                isAnimated2.toggle()
               // }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .mint : .indigo)
                .frame(
                    width: isAnimated ? 100 : 200,
                    height: isAnimated ? 100 : 200)
                .rotationEffect(.degrees(isAnimated ? 360 : 0))
                //.offset(y: isAnimated ? 300 : 0)
                .animation(Animation.default.repeatForever(autoreverses: true), value: isAnimated)
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.green)
                .frame(width: isAnimated2 ? 400 : 200, height: 100)
                .animation(.spring, value: isAnimated2)
            
        }
    }
}

#Preview {
    MyAnimations()
}

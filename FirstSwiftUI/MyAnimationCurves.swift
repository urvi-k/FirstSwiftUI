//
//  MyAnimationCurves.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-05-04.
//

import SwiftUI

struct MyAnimationCurves: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Go") {
                isAnimated.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.pink)
                .frame(width: isAnimated ? 200 : 100, height: 100)
                .animation(.bouncy, value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.pink)
                .frame(width: isAnimated ? 200 : 100, height: 100)
                .animation(.easeIn, value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.pink)
                .frame(width: isAnimated ? 200 : 100, height: 100)
                .animation(.interactiveSpring, value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.pink)
                .frame(width: isAnimated ? 200 : 100, height: 100)
                .animation(.snappy, value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.pink)
                .frame(width: isAnimated ? 200 : 100, height: 100)
                .animation(.spring(Spring(response: 1, dampingRatio: 0.3), blendDuration: 3), value: isAnimated)
        }
    }
}

#Preview {
    MyAnimationCurves()
}

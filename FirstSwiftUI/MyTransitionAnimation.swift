//
//  MyTransitionAnimation.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-05-04.
//

import SwiftUI

struct MyTransitionAnimation: View {
    
    @State var isShowBottomShit: Bool = false
    
    var body: some View {
        VStack {
            Button("Go") {
                isShowBottomShit.toggle()
            }
            Spacer()
            if isShowBottomShit {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.ultraThinMaterial)
                    .frame(height: UIScreen.main.bounds.height/2)
                    //.transition(.slide)
                    //.transition(.move(edge: .bottom))
                    //.animation(.bouncy)
                    //.transition(AnyTransition.scale.animation(.bouncy))
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal:AnyTransition.slide.animation(.bouncy) ))
                    .animation(.bouncy)
            }
        }
        .background(
            Image("pz1", bundle: .main)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.top)
            
        )
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    MyTransitionAnimation()
}

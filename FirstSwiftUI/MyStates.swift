//
//  MyStates.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-04-27.
//

import SwiftUI

struct MyStates: View {
    
    @State var bgColor: Color = .cyan
    @State var count: Int = 1
    
    var body: some View {
        ZStack {
            //background
            bgColor
                .ignoresSafeArea()
            
            //Foreground
            VStack(spacing: 20) {
                Text("count: \(count)")
                    .font(.largeTitle)
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        bgColor = .gray
                        count += 1
                    }
                    .accentColor(.white)
                    .font(.headline)
                    
                    Button("Button 2") {
                        bgColor = .mint
                        count -= 1
                    }
                    .accentColor(.white)
                    .font(.headline)
                    
                }
                
            }
            
        }
    }
}

#Preview {
    MyStates()
}

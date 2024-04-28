//
//  MyButton.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-04-27.
//

import SwiftUI

struct MyButton: View {
    
    @State var title: String = "Not Pressed!!"
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text(title)
            // Button 1
            Button("Delete") {
                title = "Pressed Button 1 !!"
            }
            .accentColor(.brown)
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()
            .padding(.horizontal, 20)
            .background(
                Capsule()
            )
            
            
            //Button 2
            Button(action: {
                title = "Pressed Button 2 !!"
            }, label: {
                Text("Save")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                    Circle()
                        .fill(.blue)
                        .frame(width: 80, height: 80)
                    )
            })
            
        }
    }
}

#Preview {
    MyButton()
}

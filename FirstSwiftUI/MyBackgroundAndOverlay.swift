//
//  MyBackgroundAndOverlay.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-04-21.
//

import SwiftUI

struct MyBackgroundAndOverlay: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .frame(width: 100, height: 100)
            .background(
                //Color.red
                //LinearGradient(colors: [.blue,.yellow], startPoint: .bottomLeading, endPoint: .top)
                Circle()
                    .fill(LinearGradient(colors: [.blue,.yellow], startPoint: .bottomLeading, endPoint: .top))
            )
            .background(
            Circle()
                .fill(LinearGradient(colors: [.yellow,.blue], startPoint: .bottomLeading, endPoint: .top))
                .frame(width: 120, height: 120)
            )
            .padding(50)
        
        
        Rectangle()
            .frame(width: 100, height: 100)
            .overlay(
            Rectangle()
                .fill(Color.accentColor)
                .frame(width: 50, height: 50)
            ,alignment: .bottomLeading)
            .background(
            Rectangle()
                .fill(Color.pink)
                .frame(width: 150, height: 150)
            , alignment: .bottomLeading)
            .padding(.all)
        
        
        Image(systemName: "heart.fill")
            .font(.largeTitle)
            .background(
            Circle()
                .fill(LinearGradient(colors: [.yellow,.blue], startPoint: .bottomLeading, endPoint: .top))
                .frame(width: 100, height: 100)
            )
            .padding(50)
    }
}

#Preview {
    MyBackgroundAndOverlay()
}


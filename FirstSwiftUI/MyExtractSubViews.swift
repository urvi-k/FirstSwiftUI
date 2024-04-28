//
//  MyExtractSubViews.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-04-28.
//

import SwiftUI

struct MyExtractSubViews: View {
    
    var bgColor: Color = .cyan
    
    var body: some View {
        ZStack {
            //bgLayer
            bgColor.ignoresSafeArea()
            
            //contentLayer
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            ItemView(count: 4, item: "Apple", color: .red)
            ItemView(count: 6, item: "Orange", color: .orange)
            ItemView(count: 2, item: "Mango", color: .yellow)
        }
    }
}

#Preview {
    MyExtractSubViews()
}

struct ItemView: View {
    
    let count: Int
    let item: String
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(item)
        }
        .foregroundColor(.white)
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

//
//  MyInitializers.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-04-23.
//

import SwiftUI

struct MyInitializers1: View {
    
    let circleColor: Color = .purple
    let circleNumber: Int = 2
    
    var body: some View {
        Circle()
            .fill(circleColor)
            .frame(width: 100, height: 100)
            .overlay{
                Text("\(circleNumber)")
                    .font(.largeTitle)
            }
    }
}

struct MyInitializers2: View {
    
    let circleColor: Color
    let circleNumber: Int
    
    var body: some View {
        Circle()
            .fill(circleColor)
            .frame(width: 100, height: 100)
            .overlay{
                Text("\(circleNumber)")
                    .font(.largeTitle)
            }
    }
}

struct MyInitializers3: View {
    
    let circleColor: Color
    let tag: CircleTag
    
    init(circleColor: Color, tag: CircleTag) {
        self.circleColor = circleColor
        self.tag = tag
    }
    
    enum CircleTag: Int {
        case one = 1
        case two = 2
        case three = 3
    }
    
    var body: some View {
        Circle()
            .fill(circleColor)
            .frame(width: 100, height: 100)
            .overlay{
                Text("\(tag.rawValue)")
                    .font(.largeTitle)
            }
    }
}


#Preview {
    HStack {
        MyInitializers1()
        MyInitializers2(circleColor: .pink, circleNumber: 4)
        MyInitializers3(circleColor: .orange, tag: .three)
    }
}

//
//  MyShapes.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-03-03.
//

import SwiftUI

struct MyShapes: View {
    var body: some View {
       // Circle()
        //Ellipse()
       // Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: .circular)
            .trim(from: 0.2, to: 1.0)
            .fill(Color.blue)
            .stroke(Color.black)
            //.border(.purple)\
            .stroke(.black, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [60]) )
           // .foregroundColor(.brown)
             .frame(width: 300, height: 100)
            
    }
}

#Preview {
    MyShapes()
}

//
//  MyGradientColorView.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-03-21.
//

import SwiftUI

struct MyGradientColorView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                //LinearGradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),Color( #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1))], startPoint: .topLeading, endPoint: .bottom)
                
                //RadialGradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),Color( #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1))], center: .bottomLeading, startRadius: 10, endRadius: 200)
                
                AngularGradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),Color( #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1))], center: .center, startAngle: .degrees(0), endAngle: .degrees(90))
            )
            .frame(width: 200, height: 200)
    }
}

#Preview {
    MyGradientColorView()
}

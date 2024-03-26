//
//  MyImageView.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-03-25.
//

import SwiftUI

struct MyImageView: View {
    var body: some View {
        VStack{
            Image("pz1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                //.frame(width: 350, height: 400)
            
            Image("pz1")
                .resizable()
                //.frame(width: 150, height: 120)
                .aspectRatio(contentMode: .fill)
                .clipped()
                .clipShape(Circle())
                
            Image("urvi-sign")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(.green)
                .scaledToFit()
        }
        
    }
}

#Preview {
    MyImageView()
}

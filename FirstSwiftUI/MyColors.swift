//
//  MyColors.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-03-18.
//

import SwiftUI

struct MyColors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                
                //Color.blue, //switUI color
         //Color(#colorLiteral(red: 0, green: 1, blue: 0.7370542288, alpha: 1)) //color literel -- Edit -> Formate -> Show color -> drag-drop
         // Color(UIColor.secondarySystemBackgroung)
               // UIKit import not working
         
         Color("custom-color")
            
            )
            .frame(width: 200, height: 300)
            .shadow(color: Color("custom-color").opacity(0.5), radius: 20, x: -20, y: -20)
        
    }
}

#Preview {
    MyColors()
}

//
//  MyExtractFunctions.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-04-28.
//

import SwiftUI

struct MyExtractFunctions: View {
    
    @State var bgColor: Color = .red
    
    var body: some View {
        ZStack {
            //bgLayer
            bgColor.ignoresSafeArea()
            
            //FgLayer
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("color chaned")
                .foregroundColor(.white)
            
            Button(action: {
                onButtonClick()
            }, label: {
                Text("Press me")
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            })
            
        }
    }
    
    func onButtonClick() {
        self.bgColor = .yellow
    }
}

#Preview {
    MyExtractFunctions()
}

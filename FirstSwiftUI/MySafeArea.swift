//
//  MySafeArea.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-04-27.
//

import SwiftUI

struct MySafeArea: View {
    var body: some View {
        
//        // demo 1
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.blue)
//            .background(ignoresSafeAreaEdges: .all)
        
        
        // demo 2
//        ZStack{
//            //background
//            Color.red
//                .ignoresSafeArea()
//            
//            // foreground
//            ScrollView {
//                VStack{
//                    ForEach(0..<15) { i in
//                        Rectangle()
//                            .fill(.white)
//                            .cornerRadius(10)
//                            .shadow(radius: 10)
//                            .frame(maxWidth: .infinity, minHeight: 150)
//                            .padding(10)
//                    }
//                }
//            }
//        }
        
        
        //demo 3
        ScrollView {
            Text("Title")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                .background(.red)
                
            
            VStack{
                ForEach(0..<15) { i in
                    Rectangle()
                        .fill(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                        .frame(maxWidth: .infinity, minHeight: 150)
                        .padding(10)
                }
            }
        }
        .background(
            Color.blue
                .ignoresSafeArea()
        )
        
        
    }
}

#Preview {
    MySafeArea()
}

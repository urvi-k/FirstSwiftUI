//
//  MyStackViews.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-04-22.
//

import SwiftUI

struct MyStackViews: View {
    var body: some View {
        ZStack(alignment: .top, content: {
            Rectangle()
                .fill(Color.gray)
                .frame(width: 300, height: 100)
            Rectangle()
                .background(Color.blue) // not working with shapes on zstack
                .frame(width: 200, height: 200)
            HStack(alignment: .top) {
                Circle()
                    .fill(Color.red)
                    .frame(width: 70, height: 70)
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 30, height: 30)
                
                VStack {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50)
                    
                }
            }
                
        })
        
        
        
        //MARK: background vs zstack
        
        ZStack{
            Circle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            
            Text("1")
                .font(.largeTitle)
        }
        .padding(30)
        
        Text("1")
            .font(.largeTitle)
            .background(
            Circle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            )
        
    }
}

#Preview {
    MyStackViews()
}

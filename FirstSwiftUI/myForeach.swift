//
//  myForeach.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-04-24.
//


//TODO: - pending

import SwiftUI

struct myForeach: View {
    let data: [String] = ["p","o","l","l","o"]
    
    var body: some View {
        VStack {
            
            //MARK: Cant use this in views
            //data.forEach{ print($0) }
            
            ForEach(data.indices) {i in
            Text("\(data[i])")
            }
            
            ForEach(0..<3) { i in
                Text("p: \(i)")
            }
        }
    }
}

#Preview {
    myForeach()
}

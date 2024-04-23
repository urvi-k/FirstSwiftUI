//
//  MyPadding.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-04-22.
//

import SwiftUI

struct MyPadding: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding(100)
            .background(Color.gray)
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 30, trailing: 40))
            .background(Color.green)
            .padding(.all, 20)
            .background(Color.blue)
            .padding(.leading, 20)
           

        //MARK: - shadow on padding, check how corner radius works
            .background(
                Color.red
                    .cornerRadius(20)
                    .shadow(color: .white, radius: 10, x: 0.4)
            )
            
    }
}

#Preview {
    MyPadding()
}

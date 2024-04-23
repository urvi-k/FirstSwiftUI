//
//  MySpacer.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-04-22.
//

import SwiftUI

struct MySpacer: View {
    var body: some View {
        HStack{
            Rectangle()
                .fill(.blue)
                .frame(width: 50, height: 50)
            
            //MARK: - Color Spacer - working
            Spacer(minLength: 100)
                .frame(height: 5)
                .background(.orange)
            
            Rectangle()
                .background(.blue)
                .frame(width: 50, height: 50)
            
            //MARK: - Color Spacer - not working
            Spacer()
                .background(.orange)
                .frame(height: 5)
            
            Rectangle()
                .fill(.gray)
                .frame(width: 50, height: 50)
            Rectangle()
                .fill(.gray)
                .frame(width: 50, height: 50)
            Rectangle()
                .fill(.gray)
                .frame(width: 50, height: 50)
        }
    }
}

#Preview {
    MySpacer()
}

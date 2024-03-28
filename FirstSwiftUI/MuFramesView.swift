//
//  MuFramesView.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-03-28.
//

import SwiftUI

struct MuFramesView: View {
    var body: some View {
        Text("abcf")
            .background(.red)
            .frame(minWidth: 80, maxWidth: 100)
            .background(.yellow)
        
        
        Text("abcf sfsf sfsfsf sff")
            .background(.red)
            .frame(minWidth: 80, maxWidth: 100)
            .background(.yellow)
        
        //MARK: idealWidth ---- didnt understand
        Text("agh")
            .background(.red)
            .frame(idealWidth: 60)
            .background(.yellow)
        
        Text("agh bn")
            .background(.red)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.yellow)
    }
}

#Preview {
    MuFramesView()
}

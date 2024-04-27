//
//  MyGridView.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-04-26.
//

import SwiftUI

struct MyGridView: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 1, alignment: .center),
        GridItem(.flexible(), spacing: 1, alignment: .center),
        GridItem(.fixed(50), spacing: 1, alignment: .center),
        GridItem(.flexible(minimum: 120, maximum: 130), spacing: 1, alignment: .center)
    ]
    
    let adaptiveC: [GridItem] = [
        GridItem(.adaptive(minimum: 50, maximum: 200)),
        GridItem(.adaptive(minimum: 150, maximum: 180))
    ]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns, spacing: 1) {
                Section(header:
                            Text("Section 1")
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(.indigo)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(10)
                        
                        
                        ,content: {
                    ForEach(0..<25) { i in
                        Rectangle()
                            .fill(.black)
                            .frame(height: 100)
                    }
                })
            }
            
            
            LazyVGrid(columns: adaptiveC, spacing: 1, pinnedViews: [.sectionHeaders], content: {
                Section(header:
                            Text("Section 2")
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(.red)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(10)
                        
                        
                        ,content: {
                    ForEach(0..<25) { i in
                        Rectangle()
                            .fill(.black)
                            .frame(height: 100)
                    }
                })
            })
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: columns, spacing: 1, pinnedViews: [.sectionHeaders], content: {
                    Section(header:
                                Text("Section 3")
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(.green)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(10)
                            
                            
                            ,content: {
                        ForEach(0..<25) { i in
                            Rectangle()
                                .fill(.black)
                                .frame(width: 100)
                        }
                    })
                })
            }
        }
    }
}

#Preview {
    MyGridView()
}

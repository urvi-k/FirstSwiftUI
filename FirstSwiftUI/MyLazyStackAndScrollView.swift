//
//  MyLazyStackAndScrollView.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-04-25.
//

import SwiftUI

struct MyLazyStackAndScrollView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<15) { index in
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 100, height: 100)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MyLazyStackAndScrollView()
}

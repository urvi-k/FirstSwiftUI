//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-03-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Go", action: {
                MyLazyStackAndScrollView()
            })
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 10, leading: 50, bottom: 10, trailing: 50))
            .background(.green)
            .cornerRadius(10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

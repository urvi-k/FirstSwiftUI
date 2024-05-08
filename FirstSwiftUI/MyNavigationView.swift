//
//  MyNavigationView.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-05-07.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        NavigationView {
            List {
                Text("me")
                Text("me")
                Text("me")
                Text("me")
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
                leading: NavigationLink(
                    destination: SecondView(),
                    label: {
                        Image(systemName: "heart")
                    })
                .accentColor(.red),
                trailing: NavigationLink(
                    destination: SecondView(),
                    label: {
                        Image(systemName: "gear")
                    })
                .accentColor(.green)
            )
        }
    }
}

#Preview {
    MyNavigationView()
}

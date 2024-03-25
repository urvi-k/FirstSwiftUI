//
//  MySFIconsView.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-03-24.
//

import SwiftUI

struct MySFIconsView: View {
    var body: some View {
        Image(systemName: "heart")
            .font(.largeTitle)
            .foregroundColor(.red)
        Image(systemName: "eye")
            .font(.system(size: 100))
        Image(systemName: "cross")
            .frame(width: 50, height: 80)
            .border(.green)
        Image(systemName: "plus")
        //MARK: Image resizable, aspectRatio
            .resizable()
            .frame(width: 100, height: 120)
            .border(.orange)
            .aspectRatio(contentMode: .fit)
        Image(systemName: "person.crop.circle.badge.questionmark.fill")
            //MARK: Image renderingMode
            .renderingMode(.original)
            .font(.system(size: 100))
            .foregroundColor(.cyan)
    }
}

#Preview {
    MySFIconsView()
}

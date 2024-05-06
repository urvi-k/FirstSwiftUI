//
//  MySheets.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-05-05.
//

import SwiftUI

struct MySheets: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.mint.ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            .sheet(isPresented: $showSheet, content: {
                //MARK: DO NOT ADD CONDITIONAL SCREEN, IT LOADS WITH PARENT VIEW AND WILL NOT REFRESH LATER.
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
   
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.indigo.ignoresSafeArea()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
               Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .padding()
            })
        }
    }
}

#Preview {
    MySheets()
}

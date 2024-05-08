//
//  MyPopoverView.swift
//  FirstSwiftUI
//
//  Created by Urvi Koladiya on 2024-05-05.
//

import SwiftUI

struct MyPopoverView: View {
    
    @State var showScreen: Bool = false
    
    var body: some View {
        ZStack {
            //BgLayer
            Color.mint.ignoresSafeArea()
            
            //FgLayer
            Button(action: {
                showScreen.toggle()
            }, label: {
                Text("GO")
            })
            // METHOD NO - 1 - SHEET
//            .sheet(isPresented: $showScreen, content: {
//                SecondView()
//            })
            
            
            
            // METHOD NO - 2 - ANIMATION - (Reccomanded)
//            ZStack {
//                if showScreen {
//                    SecondView1(dismissScreen: $showScreen)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring)
//                }
//            }
//            .zIndex(2.0)
            
            
            
            //METHOD NO - 3 - TRANSITION
            SecondView1(dismissScreen: $showScreen)
                .offset(y: showScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring, value: showScreen)
            
        }
    }
}

struct SecondView: View {

    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            //BgLayer
            Color.green.ignoresSafeArea()
                .navigationBarHidden(true)
            
            //FgLayer
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .padding(20)
            })
            
        }
    }
}

struct SecondView1: View {

    @Binding var dismissScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            //BgLayer
            Color.green.ignoresSafeArea()
            
            //FgLayer
            Button(action: {
                //presentationMode.wrappedValue.dismiss()
                dismissScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .padding(20)
            })
        }
    }
}

struct SecondView2: View {

    @Binding var dismissScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            //BgLayer
            Color.green.ignoresSafeArea()
            
            //FgLayer
            Button(action: {
                //presentationMode.wrappedValue.dismiss()
                dismissScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .padding(20)
            })
        }
    }
}

#Preview {
    MyPopoverView()
}

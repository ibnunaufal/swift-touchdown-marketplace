//
//  ContentView.swift
//  Touchdown
//
//  Created by Macbook Pro on 30/05/2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)                
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0.0, y: 5)
                Spacer()
                FooterView()
                    .padding(.horizontal)
            } // : vstack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } // : zstack
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

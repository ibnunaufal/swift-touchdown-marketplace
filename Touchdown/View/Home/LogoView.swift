//
//  LogoView.swift
//  Touchdown
//
//  Created by Macbook Pro on 30/05/2023.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 0){
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            Text("DOWN")
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            
        } // : hstack
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}

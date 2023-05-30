//
//  SectionView.swift
//  Touchdown
//
//  Created by Macbook Pro on 30/05/2023.
//

import SwiftUI

struct SectionView: View {
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Category".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: -90))
            Spacer()
        } // : vstack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
        
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
    }
}

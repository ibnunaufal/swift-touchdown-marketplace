//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Macbook Pro on 05/06/2023.
//

import SwiftUI

struct TopPartDetailView: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            // price
            VStack(alignment: .leading, spacing: 6){
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            } // : vstack
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            // photo
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        } // : hstack
        .onAppear(
            perform: {
                withAnimation(.easeOut(duration: 0.75)){
                    isAnimating.toggle()
                }
            }
        )
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
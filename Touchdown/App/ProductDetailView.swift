//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Macbook Pro on 05/06/2023.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // header
            HeaderDetailView()
                .padding(.horizontal)
            
            // detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // detail bottom part
            VStack(alignment: .center, spacing: 0){
                // rating + sizes
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                // desc
                ScrollView(.vertical, showsIndicators: false){
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                } // : scroll
                
                // qty + fav
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                // add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
                Spacer()
                
            } // : Vstack
            .padding(.horizontal)
            .background(
                Color.white.clipShape(CustomShape()).padding(.top, -105)
            )
            .zIndex(0)
            
        } // : VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}

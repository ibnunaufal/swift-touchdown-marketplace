//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Macbook Pro on 30/05/2023.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, content: {
                Section(
                    header: SectionView(),
                    footer: SectionView()
                ){
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            }) // : grid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }) // : scrollview
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

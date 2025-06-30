//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by @algoreadme on 30/06/25.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
      render()
    }
  
  func render() -> some View {
    ScrollView(.horizontal, showsIndicators: false) {
      LazyHGrid(
        rows: gridLayout,
        alignment: .center,
        spacing: columnSpacing,
        pinnedViews: []
      ) {
        Section(
          header: SectionView(isRotateClockWise: false),
          footer: SectionView(isRotateClockWise: true)
        ) {
          ForEach(categories) { category in
            CategoryItemView(category: category)
          }
        }
      }
      .frame(height: 140)
      .padding(.horizontal, 15)
      .padding(.vertical, 10)
    }
  }
}

struct CategoryGridView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryGridView()
      .previewLayout(.sizeThatFits)
      .padding()
      .background(colorBackground)
  }
}

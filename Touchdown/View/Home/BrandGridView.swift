//
//  BrandGridView.swift
//  Touchdown
//
//  Created by @algoreadme on 30/06/25.
//

import SwiftUI

struct BrandGridView: View {
  var body: some View { render() }
  
  private func render() -> some View {
    ScrollView(.horizontal, showsIndicators: false) {
      LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
        ForEach(brands) { brand in
          BrandItemView(brand: brand)
        }
      }
      .frame(height: 200)
      .padding(15)
    }
  }
}

#Preview {
  BrandGridView()
}

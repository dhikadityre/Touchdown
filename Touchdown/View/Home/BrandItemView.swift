//
//  BrandItemView.swift
//  Touchdown
//
//  Created by @algoreadme on 30/06/25.
//

import SwiftUI

struct BrandItemView: View {
  let brand: Brand
  
  var body: some View { render() }
  
  private func render() -> some View {
    Image(brand.image)
      .resizable()
      .scaledToFit()
      .padding()
      .background(Color.white.cornerRadius(12))
      .background(
        RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
      )
  }
}

#Preview {
  BrandItemView(brand: brands[0])
}

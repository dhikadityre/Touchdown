//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by @algoreadme on 30/06/25.
//

import SwiftUI

struct AddToCartDetailView: View {
  @EnvironmentObject var shop: Shop
  
  var body: some View {
    Button(action: {
       feedback.impactOccurred()
    }, label: {
      Spacer()
      Text("Add to cart".uppercased())
        .font(.system(.title2, design: .rounded))
        .fontWeight(.bold)
        .foregroundColor(.white)
      Spacer()
    }) //: BUTTON
    .padding(15)
    .background(Color.red)
    .background(
      Color(
        red: shop.selectedProduct?.color[0] ?? sampleProduct.color[0],
        green: shop.selectedProduct?.color[1] ?? sampleProduct.color[1],
        blue: shop.selectedProduct?.color[2] ?? sampleProduct.color[2]
      )
    )
    .clipShape(Capsule())
  }
}

// MARK: - PREVIEW

struct AddToCartDetailView_Previews: PreviewProvider {
  static var previews: some View {
    AddToCartDetailView()
       .environmentObject(Shop())
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

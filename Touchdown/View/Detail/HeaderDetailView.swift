//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by @algoreadme on 30/06/25.
//

import SwiftUI

struct HeaderDetailView: View {
  @EnvironmentObject var shop: Shop
  
  var body: some View {
    VStack(alignment: .leading, spacing: 6, content: {
      Text("Protective Gear")
      
      Text(shop.selectedProduct?.name ?? sampleProduct.name)
        .font(.largeTitle)
        .fontWeight(.black)
    }) //: VSTACK
    .foregroundColor(.white)
  }
}

// MARK: - PREVIEW

struct HeaderDetailView_Previews: PreviewProvider {
  static var previews: some View {
    HeaderDetailView()
      .environmentObject(Shop())
      .previewLayout(.sizeThatFits)
      .padding()
      .background(Color.gray)
  }
}

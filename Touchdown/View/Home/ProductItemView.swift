//
//  ProductItemView.swift
//  Touchdown
//
//  Created by @algoreadme on 30/06/25.
//

import SwiftUI

struct ProductItemView: View {
  let product: Product
  
  var body: some View { render() }
  
  private func render() -> some View {
    VStack(alignment: .leading, spacing: 6) {
      ZStack {
        Image(product.image)
          .resizable()
          .scaledToFit()
          .padding(10)
      }
      .background(Color(red: product.color[0], green: product.color[1], blue: product.color[2]))
      .cornerRadius(12)
      
      Text(product.name)
        .font(.title3)
        .fontWeight(.black)
      
      Text("$\(product.price)")
        .fontWeight(.semibold)
        .foregroundColor(.gray)
    }
  }
}

#Preview {
  ProductItemView(product: products[0])
}

//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by @algoreadme on 30/06/25.
//

import SwiftUI

struct TopPartDetailView: View {
  @EnvironmentObject var shop: Shop
  @State private var isAnimating: Bool = false
  
  var body: some View {
    render()
      .onAppear(perform: {
        withAnimation(.easeOut(duration: 0.75)) {
          isAnimating.toggle()
        }
      })
  }
  
  private func render() -> some View {
    HStack(alignment: .center, spacing: 6) {
      VStack(alignment: .leading, spacing: 6) {
        Text("Price")
          .fontWeight(.semibold)
        
        Text("$\(shop.selectedProduct?.price ?? sampleProduct.price)")
          .font(.largeTitle)
          .fontWeight(.black)
      }.offset(y: isAnimating ? -50 : -75)
      
      Spacer()
      
      Image(shop.selectedProduct?.image ?? sampleProduct.image)
        .resizable()
        .scaledToFit()
        .offset(y: isAnimating ? 0 : -35)
    }
  }
  
}

#Preview {
  TopPartDetailView()
    .environmentObject(Shop())
}

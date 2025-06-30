//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by @algoreadme on 30/06/25.
//

import SwiftUI

struct ProductDetailView: View {
  @EnvironmentObject var shop: Shop
  
  var body: some View { render() }
  
  private func renderNavigationBar() -> some View {
    NavigationBarDetailView(onTapAction: {
      shop.selectedProduct = nil
      shop.showingProduct = false
    })
      .padding(.horizontal)
      .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
  }
  
  private func renderHeader() -> some View {
    HeaderDetailView()
      .padding(.horizontal)
  }
  
  private func renderTopView() -> some View {
    TopPartDetailView()
      .padding(.horizontal)
      .zIndex(1)
  }
  
  private func renderRatingAndSize() -> some View {
    RatingsSizesDetailView()
      .padding(.top, -20)
      .padding(.bottom, 10)
  }
  
  private func renderDetailView() -> some View {
    VStack(alignment: .center, spacing: 0) {
      renderRatingAndSize()
      
      ScrollView(.vertical, showsIndicators: false) {
        Text(shop.selectedProduct?.description ?? sampleProduct.description)
          .font(.system(.body, design: .rounded))
          .foregroundColor(.gray)
          .multilineTextAlignment(.leading)
        Spacer()
      }
    }
    .padding(.horizontal)
    .background(
      Color.white
        .clipShape(CustomShape())
        .padding(.top, -105)
    )
  }
  
  private func renderQuantityAndFav() -> some View {
    QuantityFavouriteDetailView()
      .padding(.vertical, 10)
  }
  
  private func renderButton() -> some View {
    AddToCartDetailView()
      .padding(.bottom, 20)
  }
  
  private func renderBottomView() -> some View {
    VStack(alignment: .center, spacing: 0) {
      renderQuantityAndFav()
      renderButton()
    }
    .padding(.horizontal)
    .background(Color.white)
  }
  
  private func render() -> some View {
    VStack(alignment: .leading, spacing: 5) {
      renderNavigationBar()
      renderHeader()
      renderTopView()
      VStack(spacing: 0) {
        renderDetailView()
        renderBottomView()
      }
    }.background(
      Color(
        red: shop.selectedProduct?.color[0] ?? sampleProduct.color[0],
        green: shop.selectedProduct?.color[1] ?? sampleProduct.color[1],
        blue: shop.selectedProduct?.color[2] ?? sampleProduct.color[2]
      )
    )
    .ignoresSafeArea(.all, edges: .all)
  }
}

#Preview {
  ProductDetailView()
    .environmentObject(Shop())
}

//
//  ContentView.swift
//  Touchdown
//
//  Created by realxnesia on 03/09/23.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var shop: Shop
  
  var body: some View { render() }
}

extension ContentView {
  private func renderNavigationBar() -> some View {
    NavigationButtonView()
      .padding()
      .background(Color.white)
      .shadow(
        color: Color.black.opacity(0.05),
        radius: 5,
        x: 0,
        y: 5
      )
  }
  
  private func renderBannerCard() -> some View {
    FeaturedTabView()
      .frame(height: UIScreen.main.bounds.width / 1.475)
      .padding(.vertical, 20)
  }
  
  private func renderCategory() -> some View {
    CategoryGridView()
  }
  
  private func renderProductList() -> some View {
    VStack(spacing: 0) {
      TitleView(title: "Helmets")
      LazyVGrid(columns: gridLayout, spacing: 15) {
        ForEach(products) { product in
          ProductItemView(product: product)
            .onTapGesture {
              feedback.impactOccurred()
              withAnimation(.easeOut) {
                shop.selectedProduct = product
                shop.showingProduct = true
              }
            }
        }
      }.padding(15)
    }
  }
  
  private func renderBrandList() -> some View {
    VStack(spacing: 0) {
      TitleView(title: "Brands")
      BrandGridView()
    }
  }
  
  private func renderContentView() -> some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(spacing: 0) {
        renderBannerCard()
        renderCategory()
        renderProductList()
        renderFooter()
      }
    }
  }
  
  private func renderFooter() -> some View {
    FooterView()
      .padding(.horizontal)
  }
  
  private func renderHomePage() -> some View {
    VStack(spacing: 0) {
      renderNavigationBar()
      renderContentView()
    }
    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
  }
  
  private func renderProductDetailPage() -> some View {
    ProductDetailView()
  }
  
  private func render() -> some View {
    // NOTE: For Now we not used NavigationLink.
    if shop.showingProduct == false && shop.selectedProduct == nil {
      return renderHomePage()
    }
    return renderProductDetailPage()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(Shop())
  }
}

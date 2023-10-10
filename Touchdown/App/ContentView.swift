//
//  ContentView.swift
//  Touchdown
//
//  Created by realxnesia on 03/09/23.
//

import SwiftUI

struct ContentView: View {
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
  
  private func renderContentView() -> some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack {
        renderBannerCard()
        renderFooter()
      }
    }
  }
  
  private func renderFooter() -> some View {
    FooterView()
      .padding(.horizontal)
  }
  private func render() -> some View {
    VStack(spacing: 0) {
      renderNavigationBar()
      Spacer()
      renderContentView()
    }
    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

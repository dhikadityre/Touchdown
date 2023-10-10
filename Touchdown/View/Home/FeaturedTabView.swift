//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by realxnesia on 10/10/23.
//

import SwiftUI

struct FeaturedTabView: View {
  var body: some View { render() }
}

extension FeaturedTabView {
  private func renderFeatured() -> some View {
    TabView {
      ForEach(players) { player in
        FeaturedItemView(player: player)
          .padding(.top)
          .padding(.horizontal, 15)
      }
    }
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
  }
  
  private func render() -> some View {
    renderFeatured()
  }
}

struct FeaturedTabView_Previews: PreviewProvider {
  static var previews: some View {
    FeaturedTabView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

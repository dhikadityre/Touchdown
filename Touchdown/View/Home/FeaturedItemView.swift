//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by realxnesia on 10/10/23.
//

import SwiftUI

struct FeaturedItemView: View {
  let player: Player
  var body: some View { render() }
}

extension FeaturedItemView {
  private func renderContentImage() -> some View {
    Image(player.image)
      .resizable()
      .scaledToFit()
      .cornerRadius(12)
  }
  
  private func render() -> some View {
    renderContentImage()
  }
}

struct FeaturedItemView_Previews: PreviewProvider {
  static var previews: some View {
    FeaturedItemView(player: players[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

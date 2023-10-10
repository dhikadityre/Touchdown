//
//  LogoView.swift
//  Touchdown
//
//  Created by realxnesia on 10/10/23.
//

import SwiftUI

struct LogoView: View {
  var body: some View { render() }
}

extension LogoView {
  private func renderTouchText() -> some View {
    Text("Touch".uppercased())
      .font(.title3)
      .fontWeight(.black)
      .foregroundColor(.black)
  }
  
  private func renderLogoImage() -> some View {
    Image("logo-dark")
      .resizable()
      .scaledToFit()
      .frame(width: 30, height: 30, alignment: .center)
  }
  
  private func renderDownText() -> some View {
    Text("Down".uppercased())
      .font(.title3)
      .fontWeight(.black)
      .foregroundColor(.black)
  }
  
  private func render() -> some View {
    HStack(spacing: 4) {
      renderTouchText()
      renderLogoImage()
      renderDownText()
    }
  }
}

struct LogoView_Previews: PreviewProvider {
  static var previews: some View {
    LogoView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

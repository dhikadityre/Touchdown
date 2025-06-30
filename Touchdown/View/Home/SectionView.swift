//
//  SectionView.swift
//  Touchdown
//
//  Created by @algoreadme on 30/06/25.
//

import SwiftUI

struct SectionView: View {
  @State var isRotateClockWise: Bool
  
  var body: some View { render() }
  
  private func render() -> some View {
    VStack(spacing: 0) {
      Spacer()
      Text("Categories".uppercased())
        .font(.footnote)
        .fontWeight(.bold)
        .foregroundColor(.white)
        .rotationEffect(Angle(degrees: isRotateClockWise ? 90 : -90))
      Spacer()
    }
    .background(colorGray.cornerRadius(12))
    .frame(width: 85)
  }
}

#Preview {
  SectionView(isRotateClockWise: false)
    .background(colorBackground)
    .previewLayout(.fixed(width: 120, height: 240))
}

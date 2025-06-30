//
//  TitleView.swift
//  Touchdown
//
//  Created by @algoreadme on 30/06/25.
//

import SwiftUI

struct TitleView: View {
  var title: String
  
  var body: some View { render() }
  
  private func render() -> some View {
    HStack {
      Text(title)
        .font(.largeTitle)
        .fontWeight(.heavy)
      
      Spacer()
    }
    .padding(.horizontal)
    .padding(.top, 16)
    .padding(.bottom, 10)
  }
}

#Preview {
  TitleView(title: "Helmet")
}

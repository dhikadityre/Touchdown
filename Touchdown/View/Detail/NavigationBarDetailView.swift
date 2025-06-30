//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by @algoreadme on 30/06/25.
//

import SwiftUI

struct NavigationBarDetailView: View {
  var onTapAction: (() -> Void)?
  
  var body: some View { render() }
  
  private func render() -> some View {
    HStack {
      Button(action: { onTapAction?() } ) {
        Image(systemName: "chevron.left")
          .font(.title)
          .foregroundColor(.white)
      }
      
      Spacer()
      
      Button(action: {}) {
        Image(systemName: "cart")
          .font(.title)
          .foregroundColor(.white)
      }
    }
  }
}

#Preview {
  NavigationBarDetailView()
    .background(Color.gray)
}

//
//  NavigationButtonView.swift
//  Touchdown
//
//  Created by realxnesia on 10/10/23.
//

import SwiftUI

struct NavigationButtonView: View {
  @State private var isAnimated: Bool = false
  
  var body: some View { render() }
}

extension NavigationButtonView {
  private func renderSearching() -> some View {
    Button(action: {}, label: {
      Image(systemName: "magnifyingglass")
        .font(.title)
        .foregroundColor(.black)
    })
  }
  
  private func renderLogo() -> some View {
    LogoView()
      .opacity(isAnimated ? 1 : 0)
      .offset(x: 0, y: isAnimated ? 0 : -25)
      .onAppear {
        withAnimation(.easeOut(duration: 0.5)) {
          isAnimated.toggle()
        }
      }
  }
  
  private func renderCart() -> some View {
    Button(action: {}, label: {
      ZStack {
        Image(systemName: "cart")
          .font(.title)
          .foregroundColor(.black)
        
        Circle()
          .fill(Color.red)
          .frame(width: 13, height: 13)
          .offset(x: 13, y: -10)
      }
    })
  }
  
  private func render() -> some View {
    HStack {
      renderSearching()
      Spacer()
      renderLogo()
      Spacer()
      renderCart()
    }
  }
}

struct NavigationButtonView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationButtonView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

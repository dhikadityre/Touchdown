//
//  FooterView.swift
//  Touchdown
//
//  Created by realxnesia on 09/10/23.
//

import SwiftUI

struct FooterView: View {
  var body: some View { render() }
}

extension FooterView {
  private func renderBody() -> some View {
    Text("We offer the most cutting edge, comfortable, lighweight, and durable footbal helmetsin the market at affordable prices")
      .foregroundColor(.gray)
      .multilineTextAlignment(.center)
      .layoutPriority(2)
  }
  
  private func renderLogo() -> some View {
    Image("logo-lineal")
      .resizable()
      .renderingMode(.template)
      .frame(width: 30, height: 30)
      .layoutPriority(0)
  }
  
  private func renderCopyright() -> some View {
    Text("copyright code 🚀 DhikaAditya\nAll right reserved")
      .font(.footnote)
      .fontWeight(.bold)
      .foregroundColor(.gray)
      .multilineTextAlignment(.center)
      .layoutPriority(1)
  }
  
  private func render() -> some View {
    VStack(alignment: .center) {
      renderBody()
      renderLogo()
      renderCopyright()
        .padding(.bottom, 10)
    }
  }
}

struct FootterView_Previews: PreviewProvider {
  static var previews: some View {
    FooterView()
      .previewLayout(.sizeThatFits)
      .background(colorBackground)
  }
}

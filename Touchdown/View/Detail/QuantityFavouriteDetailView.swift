//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by @algoreadme on 30/06/25.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
  @State private var counter: Int = 0
  
  var body: some View { render() }
  
  private func renderCustomStepperView() -> some View {
    HStack(alignment: .center, spacing: 6, content: {
      Button(action: {
        if counter > 0 {
          feedback.impactOccurred()
          counter -= 1
        }
      }, label: {
        Image(systemName: "minus.circle")
      })
      
      Text("\(counter)")
        .fontWeight(.semibold)
        .frame(minWidth: 36)
      
      Button(action: {
        if counter < 100 {
          feedback.impactOccurred()
          counter += 1
        }
      }, label: {
        Image(systemName: "plus.circle")
      })
      Spacer()
    })
  }
  
  private func renderFavouritesView() -> some View {
    Button(action: {
        feedback.impactOccurred()
    }, label: {
      Image(systemName: "heart.circle")
        .foregroundColor(.pink)
    })
  }
  
  private func render() -> some View {
    HStack(alignment: .center, spacing: 6, content: {
      renderCustomStepperView()
      renderFavouritesView()
    })
    .font(.system(.title, design: .rounded))
    .foregroundColor(.black)
    .imageScale(.large)
  }
}

// MARK: - PREVIEW

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
  static var previews: some View {
    QuantityFavouriteDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

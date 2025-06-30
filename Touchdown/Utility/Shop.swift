//
//  Shop.swift
//  Touchdown
//
//  Created by @algoreadme on 30/06/25.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? //= nil
}

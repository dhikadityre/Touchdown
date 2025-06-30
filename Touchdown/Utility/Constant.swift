//
//  Constant.swift
//  Touchdown
//
//  Created by realxnesia on 09/10/23.
//

import SwiftUI

// MARK: - Data
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
// MARK: - Color
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray)
// MARK: - Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
  return Array(
    repeating: GridItem(.flexible(), spacing: rowSpacing),
    count: 2
  )
}
// MARK: - UX
// MARK: - API
// MARK: - Image
// MARK: - Font
// MARK: - String
// MARK: - Misc

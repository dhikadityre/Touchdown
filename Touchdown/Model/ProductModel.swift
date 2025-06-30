//
//  ProductModel.swift
//  Touchdown
//
//  Created by @algoreadme on 30/06/25.
//

struct Product: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
  let price: Int
  let description: String
  let color: [Double]
}

//
//  CodableBundle+Extension.swift
//  Touchdown
//
//  Created by realxnesia on 10/10/23.
//

import Foundation

extension Bundle {
  func decode<T: Codable>(_ file: String) -> T {
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError()
    }
    guard let data = try? Data(contentsOf: url) else {
      fatalError()
    }
    let decoder = JSONDecoder()
    guard let decodedData = try? decoder.decode(T.self, from: data) else {
      fatalError()
    }
    return decodedData
  }
}

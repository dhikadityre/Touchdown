//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by realxnesia on 03/09/23.
//

import SwiftUI

@main
struct TouchdownApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(Shop())
    }
  }
}

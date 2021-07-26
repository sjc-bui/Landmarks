//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by quan bui on 2021/07/26.
//

import SwiftUI

@main
struct LandmarksApp: App {
  @StateObject private var modelData = ModelData()

  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(modelData)
    }
  }
}

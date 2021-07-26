//
//  ContentView.swift
//  Landmarks
//
//  Created by quan bui on 2021/07/26.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      // map
      MapView()
        .ignoresSafeArea(edges: .top)
        .frame(height: 300)

      CircleImage()
        .offset(y: -130)
        .padding(.bottom, -130)

      // detail text
      VStack(alignment: .leading) {
        Text("Turtle Rock")
          .font(.title)
        HStack {
          Text("Yosemite Nation Park")
          Spacer()
          Text("California")
        }
        .font(.subheadline)
        .foregroundColor(.secondary)
        Divider()
        Text("About Turtle Rock")
          .font(.title2)
        Text("Description goes here.")
      }
      .padding()
    }
    Spacer()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

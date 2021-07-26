//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by quan bui on 2021/07/26.
//

import SwiftUI

struct LandmarkDetail: View {
  @EnvironmentObject var modelData: ModelData
  var landmark: Landmark

  var landmarkIndex: Int {
    modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
  }

  var body: some View {
    ScrollView {
      // map
      MapView(coordinate: landmark.locationCoordinate)
        .ignoresSafeArea(edges: .top)
        .frame(height: 300)

      // image
      CircleImage(image: landmark.image)
        .offset(y: -130)
        .padding(.bottom, -130)

      // detail text
      VStack(alignment: .leading) {
        HStack {
          Text(landmark.name)
            .font(.title)
            .foregroundColor(.primary)
          FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
        }
        HStack {
          Text(landmark.park)
          Spacer()
          Text(landmark.state)
        }
        .font(.subheadline)
        .foregroundColor(.secondary)
        Divider()
        Text("About \(landmark.name)")
          .font(.title2)
        Text(landmark.description)
      }
      .padding()
    }
    .navigationTitle(landmark.name)
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct LandmarkDetail_Previews: PreviewProvider {
  static var modelData = ModelData()

  static var previews: some View {
    LandmarkDetail(landmark: modelData.landmarks[0])
      .environmentObject(modelData)
  }
}

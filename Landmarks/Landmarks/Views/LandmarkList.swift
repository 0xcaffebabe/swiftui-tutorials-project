//
//  LandmarkList.swift
//  Landmarks
//
//  Created by mymac on 2022/4/9.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoraiteOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter{landmark in (!showFavoraiteOnly || landmark.isFavorite)}
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoraiteOnly) {
                    Text("Display Favorite Only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRrow(landmark: landmark)
                    }
                    
                }
            }
            
        }
        .navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max", "iPad Pro (12.9-inch) (5th generation)"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
            
        }
    }
}

//
//  LandmarkRrow.swift
//  Landmarks
//
//  Created by mymac on 2022/4/9.
//

import SwiftUI

struct LandmarkRrow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
        
    }
}

struct LandmarkRrow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        Group {
            LandmarkRrow(landmark: landmarks[1])
            LandmarkRrow(landmark: landmarks[2])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

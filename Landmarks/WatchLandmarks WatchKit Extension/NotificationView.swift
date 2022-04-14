//
//  NotificationView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by mymac on 2022/4/14.
//

import SwiftUI

struct NotificationView: View {
    var title: String?
    var message: String?
    var landmark: Landmark?
    
    var body: some View {
        VStack {
            if landmark != nil {
                landmark?.image.resizable()
                    .scaledToFit()
            }
            
            Text(title ?? "Unknown Landmark")
                .font(.headline)
            
            Text(message ?? "Your are within 5 miles of one of you favorite")
                .font(.caption)
        }
        .lineLimit(0)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
        NotificationView(title: "cxk", message: "You are within 5 miles of Turtle Rock", landmark: ModelData().landmarks[0])
    }
}

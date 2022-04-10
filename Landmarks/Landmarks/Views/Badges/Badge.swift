//
//  Badge.swift
//  Landmarks
//
//  Created by mymac on 2022/4/10.
//

import SwiftUI

struct Badge: View {
    var badgeSymbol: some View {
        ForEach(0..<8){ index in
            RotatedBadgeSymbol(angle: .degrees(Double(index) / Double(8)) * 360.0)
                .opacity(0.5)
        }
        
    }
    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geometry in
                badgeSymbol
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
            
        }
        
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}

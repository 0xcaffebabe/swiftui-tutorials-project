//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by mymac on 2022/4/8.
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

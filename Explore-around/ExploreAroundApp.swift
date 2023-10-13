//
//  Explore_aroundApp.swift
//  Explore-around
//
//  Created by Tayami Rai on 12/10/2023.
//

import SwiftUI

@main
struct ExploreAroundApp: App {
    var body: some Scene {
        WindowGroup {
            LaunchView()
                .environmentObject(ContentModel())
        }
    }
}

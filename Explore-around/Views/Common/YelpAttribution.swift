//
//  YelpAttribution.swift
//  Explore-around
//
//  Created by Tayami Rai on 18/10/2023.
//

import SwiftUI

struct YelpAttribution: View {
    var link: String
    var body: some View {
        Link(destination: URL(string: link)!) {
            Image("yelp")
                .resizable()
                .scaledToFit()
                .frame(height: 36)
        }
    }
}


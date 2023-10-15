//
//  LaunchView.swift
//  Explore-around
//
//  Created by Tayami Rai on 12/10/2023.
//

import SwiftUI
import CoreLocation

struct LaunchView: View {
    @EnvironmentObject var model: ContentModel

    var body: some View {
        
        if model.authorizationState == .notDetermined{
            
        } else if model.authorizationState ==
            .authorizedAlways || model.authorizationState == .authorizedWhenInUse{
            HomeView()
        } else{

        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}

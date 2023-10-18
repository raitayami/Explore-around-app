//
//  OnboardingView.swift
//  Explore-around
//
//  Created by Tayami Rai on 18/10/2023.
//

import SwiftUI

struct OnboardingView: View {
    
    @EnvironmentObject var model: ContentModel
    @State private var tabSelection = 0
    
    private let blue = Color(red: 0/255, green: 130/255, blue: 167/255)
    private let turquoise = Color(red: 55/255, green: 197/255, blue: 192/255)

    
    var body: some View {

        VStack{
            TabView(selection: $tabSelection) {
                
                VStack(spacing: 20){
                    
                    Image("city2")
                        .resizable()
                        .scaledToFit()
                    
                    Text("Welcome to Explore Around")
                        .bold()
                        .font(.title)
                    
                    Text("Let us help you find whats nice")
                }
                .multilineTextAlignment(.center)
                .padding()
                .foregroundColor(.white)
                .tag(0)
                
                VStack{
                    Image("city1")
                        .resizable()
                        .scaledToFit()
                    
                    Text("Discover what is around you")
                        .bold()
                        .font(.title)
                    
                    Text("Get ready to be presented with nice restaurants and areas, based on your location")
                }
                .multilineTextAlignment(.center)
                .padding()
                .foregroundColor(.white)
                .tag(1)
                
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            
            Button {
                
                //Detect which tab it is
                
                if tabSelection == 0 {
                    tabSelection = 1
                } else {
                    model.requestGeoLocationPermission()
                }
            } label: {
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: 48)
                        .cornerRadius(10)
                    
                    Text(tabSelection == 0 ? "Next" : "Get my location")
                        .bold()
                        .padding()
                }
            }
            .accentColor(tabSelection == 0 ? blue : turquoise)
            .padding()

            Spacer()
        }
        .background(tabSelection == 0 ? blue : turquoise)
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

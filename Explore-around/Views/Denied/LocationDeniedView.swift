//
//  LocationDenied.swift
//  Explore-around
//
//  Created by Tayami Rai on 18/10/2023.
//

import SwiftUI

struct LocationDeniedView: View {
    
    let backgroundColor = Color(red: 34/255, green: 141/255, blue: 138/255)
    
    var body: some View {
        
        VStack(spacing: 20){
            Spacer()
            Text("Whoops")
                .font(.title)
            Text("We need to access your location to provide you with our services. When you want to change the mode at settings")
            
            Spacer()
            
            Button {
                //Open settings by getting the settings URL
                if let url = URL(string: UIApplication.openSettingsURLString){
                    if UIApplication.shared.canOpenURL(url){
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    }
                }
            } label: {
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: 48)
                        .cornerRadius(10)
                    
                    Text("Go to Settings")
                        .bold()
                        .foregroundColor(backgroundColor)
                        .padding()
                }
            
            }
            .padding()
            
            Spacer()

        }
        .padding()
        .foregroundColor(.white)
        .multilineTextAlignment(.center)
        .background(backgroundColor)
        .ignoresSafeArea(.all, edges: .all)

    }
}

struct LocationDenied_Previews: PreviewProvider {
    static var previews: some View {
        LocationDeniedView()
    }
}

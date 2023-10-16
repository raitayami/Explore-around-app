//
//  BusinessRow.swift
//  Explore-around
//
//  Created by Tayami Rai on 15/10/2023.
//

import SwiftUI

struct BusinessRow: View {
    
    @ObservedObject var business: Business
    
    var body: some View {
        
        VStack(alignment: .leading){
            HStack{
                
                let uiImage = UIImage(data: business.imageData ?? Data())
                Image(uiImage: uiImage ?? UIImage())
                    .resizable()
                    .frame(width: 48, height: 48)
                    .cornerRadius(5)
                    .scaledToFit()
                
                VStack(alignment: .leading){
                    Text(business.name ?? "")
                        .bold()
                    Text(String(format: "%.1f km away", (business.distance ?? 0)/1000))
                        .font(.caption)
                }
                
                Spacer()
                
                VStack(alignment: .leading){
                    Image("regular_\(business.rating ?? 0)")
                    Text("\(business.reviewCount ?? 0) Review")
                        .font(.caption)
                }
                
                
            }
            
            Divider()

        }

    }
}


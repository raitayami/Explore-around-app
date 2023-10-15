//
//  BusinessSectionHeader.swift
//  Explore-around
//
//  Created by Tayami Rai on 15/10/2023.
//

import SwiftUI

struct BusinessSectionHeader: View {
    
    var title: String
    var body: some View {
        
        ZStack(alignment: .leading){
            Rectangle()
                .foregroundColor(.white)
            
            Text(title)
                .font(.headline)
        }
        
    }
}

struct BusinessSectionHeader_Previews: PreviewProvider {
    static var previews: some View {
        BusinessSectionHeader(title:"hey")
    }
}

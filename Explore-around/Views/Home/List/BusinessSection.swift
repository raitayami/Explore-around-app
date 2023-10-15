//
//  BusinessSection.swift
//  Explore-around
//
//  Created by Tayami Rai on 15/10/2023.
//

import SwiftUI

struct BusinessSection: View {
    
    var title: String
    var businesses: [Business]
    
    var body: some View {
        
        Section(header: BusinessSectionHeader(title: title)){
            ForEach(businesses){ business in
                
                Text(business.name ?? "")
                Divider()
                
            }
        }
        
    }
}


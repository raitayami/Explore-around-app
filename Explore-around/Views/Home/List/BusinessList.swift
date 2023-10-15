//
//  BusinessList.swift
//  Explore-around
//
//  Created by Tayami Rai on 15/10/2023.
//

import SwiftUI

struct BusinessList: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        ScrollView{
            LazyVStack(alignment: .leading, pinnedViews: [.sectionHeaders]){
                
                BusinessSection(title: "Restaurants", businesses: model.restaurants)
                
                BusinessSection(title: "Sights", businesses: model.sights)
                
                
                
            }
        }
        
    }
}

struct BusinessList_Previews: PreviewProvider {
    static var previews: some View {
        BusinessList()
    }
}

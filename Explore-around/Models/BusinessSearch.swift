//
//  BusinessSearch.swift
//  Explore-around
//
//  Created by Tayami Rai on 13/10/2023.
//

import Foundation

struct BusinessSearch: Decodable {
    
    var businesses = [Business]()
    var total = 0
    var region = Region()
    
}

struct Region: Decodable{
    var center = Coordinate() 
}

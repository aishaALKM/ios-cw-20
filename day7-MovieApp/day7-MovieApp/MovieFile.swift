//
//  MovieFile.swift
//  day7-MovieApp
//
//  Created by Aisha Taleb on 23/03/2022.
//

import Foundation

struct Film: Identifiable{
    var movieName: String
    var movieCast: [String]
    var id = UUID()
}

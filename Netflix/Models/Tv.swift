//
//  Tv.swift
//  Netflix
//
//  Created by Faxriddin Mo'ydinxonov on 21/08/23.
//

import Foundation

struct TrendingTvResponse: Codable {
    
    let results: [Tv]
}

struct Tv: Codable {
    
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}

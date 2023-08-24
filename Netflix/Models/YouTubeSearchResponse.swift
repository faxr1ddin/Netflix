//
//  YouTubeSearchResponse.swift
//  Netflix
//
//  Created by Faxriddin Mo'ydinxonov on 22/08/23.
//

import Foundation

struct YouTubeSearchResponse: Codable {
   
    let items: [VideoElement]
}

struct VideoElement: Codable {
    
    let id: IDVideoElement
}

struct IDVideoElement: Codable {
    
    let kind: String
    let videoId: String
}

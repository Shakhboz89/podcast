//
//  Episode.swift
//  NewPodcast
//
//  Created by MacBook on 6/22/19.
//  Copyright © 2019 Shakhboz. All rights reserved.
//

import Foundation
import FeedKit

struct Episode: Codable {
    let title: String
    let pubDate: Date
    let description: String
    var imageUrl: String?
    let author: String
    let streamUrl: String
    var fileUrl: String?
    
    init(feedItem: RSSFeedItem) {
        
        self.streamUrl = feedItem.enclosure?.attributes?.url ?? ""
        
        self.title = feedItem.title ?? ""
        self.pubDate = feedItem.pubDate ?? Date()
        self.description = feedItem.iTunes?.iTunesSubtitle ?? feedItem.description ?? ""
        self.author = feedItem.iTunes?.iTunesAuthor ?? ""
        self.imageUrl = feedItem.iTunes?.iTunesImage?.attributes?.href
    }
}

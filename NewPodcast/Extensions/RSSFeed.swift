//
//  RSSFeed.swift
//  NewPodcast
//
//  Created by MacBook on 6/22/19.
//  Copyright © 2019 Shakhboz. All rights reserved.
//

import FeedKit

extension RSSFeed {
    func toEpisode() -> [Episode] {
        let imageUrl = iTunes?.iTunesImage?.attributes?.href
        
        var episodes = [Episode]() // Blank Episode Array
        items?.forEach({ (feedItem) in
            var episode = Episode(feedItem: feedItem)
            
            if episode.imageUrl == nil {
                episode.imageUrl = imageUrl
            }
            episodes.append(episode)
        })
        return episodes
    }
}

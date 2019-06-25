//
//  EpisodeCell.swift
//  NewPodcast
//
//  Created by MacBook on 6/22/19.
//  Copyright © 2019 Shakhboz. All rights reserved.
//

import UIKit

class EpisodeCell: UITableViewCell {
    
    var episode: Episode! {
        didSet {
            titleLabel.text = episode.title
            descriptionLabel.text = episode.description
            let dateFormater = DateFormatter()
            dateFormater.dateFormat = "MMM dd, yyyy"
            pubDateLabel.text = dateFormater.string(from: episode.pubDate)
            
            
        }
    }
    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var pubDateLabel: UILabel!
}

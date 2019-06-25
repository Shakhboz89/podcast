//
//  String.swift
//  NewPodcast
//
//  Created by MacBook on 6/22/19.
//  Copyright © 2019 Shakhboz. All rights reserved.
//

import Foundation

extension String {
    func toSecureHTTPS() -> String {
        return self.contains("https") ? self : self.replacingOccurrences(of: "http", with: "https")
    }
}

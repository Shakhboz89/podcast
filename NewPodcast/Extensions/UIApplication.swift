//
//  UIApplication.swift
//  NewPodcast
//
//  Created by MacBook on 6/23/19.
//  Copyright © 2019 Shakhboz. All rights reserved.
//

import UIKit

extension UIApplication {
    static func mainTabBarController() -> MainTabBarController {
        
        return shared.keyWindow?.rootViewController as! MainTabBarController
    }
}

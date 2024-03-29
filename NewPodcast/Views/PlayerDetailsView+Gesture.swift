//
//  PlayerDetailsView+Gesture.swift
//  NewPodcast
//
//  Created by MacBook on 6/23/19.
//  Copyright © 2019 Shakhboz. All rights reserved.
//

import UIKit

extension PlayerDetailsView {
    
    @objc func handlePan(gesture: UIPanGestureRecognizer) {
        if gesture.state == .changed {
            handlePanChanged(gesture: gesture)
        } else if gesture.state == .ended {
            handlePanEnded(gesture: gesture)
        }
    }
    
    func handlePanChanged(gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: self.superview)
        self.transform = CGAffineTransform(translationX: 0, y: translation.y)
        self.miniPlayerView.alpha = 1 + translation.y / 200
        self.maximizePlayerView.alpha = -translation.y / 200
    }
    
    func handlePanEnded(gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: self.superview)
        let velocity = gesture.velocity(in: self.superview)
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.transform = .identity
            if translation.y < -200 || velocity.y < -500 {
                
                UIApplication.mainTabBarController().maximizePlayerDetails(episode: nil)
                
//                mainTabBarController?.maximizePlayerDetails(episode: nil)
//                gesture.isEnabled = false
            } else {
                self.miniPlayerView.alpha = 1
                self.maximizePlayerView.alpha = 0
            }
        })
    }
    
    @objc func handleTapMaximize() {
        UIApplication.mainTabBarController().maximizePlayerDetails(episode: nil)
//        panGesture.isEnabled = false
    }
}

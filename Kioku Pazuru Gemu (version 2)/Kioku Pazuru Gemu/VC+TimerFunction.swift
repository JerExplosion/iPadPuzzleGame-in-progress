//
//  VC+TimerFunction.swift
//  Kioku Pazuru Gemu
//
//  Created by Jerry Ren on 1/21/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

import Foundation

import UIKit

extension ViewController {
    
    @objc func timerFunction() {   // selector only takes objc functions

        gameTime += 1
        
        let gameMin = String(format: "%02d", gameTime / 60)
        let gameSec = String(format: "%02d", gameTime % 60)
        
        timerLabel.text = "\(gameMin) : \(gameSec)"   //微调 later
    }
    
}

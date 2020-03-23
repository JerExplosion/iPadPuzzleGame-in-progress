//
//  VC+WiningState.swift
//  Kioku Pazuru Gemu
//
//  Created by Jerry Ren on 3/22/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

import  UIKit
import Foundation

extension ViewController {
    
    func WonTheGemu() {
        if conqueredArray.count == gameMode * gameMode {
            gameTimer.invalidate()
            let winingText = "You finished in \(gameTime/60):\(gameTime % 60)"
            gamuWonLabel.isHidden = false
            gamuWonLabel.text = winingText
        }
        
    }
}

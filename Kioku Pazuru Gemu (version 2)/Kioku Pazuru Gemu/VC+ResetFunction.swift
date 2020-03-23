//
//  VC+ResetFunction.swift
//  Kioku Pazuru Gemu
//
//  Created by Jerry Ren on 1/21/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

import UIKit


extension ViewController {
    
    @IBAction func resetAction(_ sender: Any) {
                       
        gameTime = 0
        conqueredArray = []
        gamuWonLabel.isHidden = true
        
        for anyTile in tilesArray {
            anyTile.removeFromSuperview()
        }
        
        makeTiles()
        randomize()
        
        if (gameTimer != nil) {
            gameTimer.invalidate()
            timerLabel.text = "00\' : 00\""
        }
        gameTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
    }
    
}

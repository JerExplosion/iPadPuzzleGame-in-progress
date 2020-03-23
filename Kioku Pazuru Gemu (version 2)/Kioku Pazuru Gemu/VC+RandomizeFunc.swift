//
//  VC+RandomizeFunc.swift
//  Kioku Pazuru Gemu
//
//  Created by Jerry Ren on 1/21/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

import UIKit

extension ViewController {
    
    func randomize() {
        
        var tempoCentersArray = centersArray
        
        for randomTile in tilesArray {
            let randomIndex: Int = Int(arc4random_uniform(UInt32(tempoCentersArray.count)))
            let randomCenter =  tempoCentersArray[randomIndex]
            randomTile.center = randomCenter
            tempoCentersArray.remove(at: randomIndex)
        }
    }
    
}

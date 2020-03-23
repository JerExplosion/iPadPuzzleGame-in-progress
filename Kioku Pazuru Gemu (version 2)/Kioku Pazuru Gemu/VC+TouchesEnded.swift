//
//  VC+TouchesEnded.swift
//  Kioku Pazuru Gemu
//
//  Created by Jerry Ren on 1/22/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

import UIKit

extension ViewController {
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let yourTouch = touches.first
        
        if let tileTapped = yourTouch?.view as? MyRaberu {
            print("You tapped tile No.\(tileTapped.internalNum!)")
            
            if comparingRN {
                tileTwo = tileTapped
                revealAndCompare(inputTile: tileTapped)
            } else {
                tileOne = tileTapped
                FlipToReveal(inputTile: tileTapped)
            }
            comparingRN = !comparingRN
            
        }
    
    }
    
}

//
//  VC+FlipToReveal.swift
//  Kioku Pazuru Gemu
//
//  Created by Jerry Ren on 1/23/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

import UIKit

extension ViewController {
    
    func FlipToReveal(inputTile: MyRaberu) {
        UIView.transition(with: inputTile, duration: 0.5, options: UIView.AnimationOptions.transitionFlipFromTop, animations: {
            
            inputTile.backgroundColor = UIColor.systemOrange
            inputTile.text = "\(inputTile.internalNum ?? 111)" // optional though
            
            
        }, completion: nil)
    }
    
}

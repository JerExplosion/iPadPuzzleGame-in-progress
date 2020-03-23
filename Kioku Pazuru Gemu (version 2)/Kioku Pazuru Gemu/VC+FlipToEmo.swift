//
//  VC+FlipToEmo.swift
//  Kioku Pazuru Gemu
//
//  Created by Jerry Ren on 3/22/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    
    func FlipToEmo(inputTile: MyRaberu) {
        UIView.transition(with: inputTile, duration: 0.5, options: UIView.AnimationOptions.transitionFlipFromTop, animations: {
            
            inputTile.backgroundColor = UIColor.systemYellow
            inputTile.text = "\(MyRaberu.emo)" 
            
            
        }, completion: nil)
    }
}


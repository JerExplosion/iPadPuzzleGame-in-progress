//
//  VC+RevealAndCompare.swift
//  Kioku Pazuru Gemu
//
//  Created by Jerry Ren on 3/21/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

import UIKit
import Foundation

extension ViewController {
    
    func revealAndCompare(inputTile: MyRaberu) {
        UIView.transition(with: inputTile, duration: 0.5, options: UIView.AnimationOptions.transitionFlipFromBottom, animations: {
            inputTile.backgroundColor = .systemPink
            inputTile.text = "\(inputTile.internalNum ?? 111)"
        }) { (filler) in
            self.comparison()
        }
        
    }
    
    
    
    
}

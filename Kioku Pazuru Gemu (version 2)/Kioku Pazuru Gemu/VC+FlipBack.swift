//
//  VC+FlipBack.swift
//  Kioku Pazuru Gemu
//
//  Created by Jerry Ren on 3/22/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

import UIKit
import Foundation

extension ViewController {
    
    func FlipBack(inputTile: MyRaberu) {
        UIView.transition(with: inputTile, duration: 0.5, options: UIView.AnimationOptions.transitionFlipFromBottom, animations: {
            
            inputTile.backgroundColor = UIColor.darkGray
            inputTile.text = "\(MyRaberu.question)"
            
            
        }, completion: nil)
    }
    
}

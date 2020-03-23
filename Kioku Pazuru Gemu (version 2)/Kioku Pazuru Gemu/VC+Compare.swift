//
//  VC+Compare.swift
//  Kioku Pazuru Gemu
//
//  Created by Jerry Ren on 3/21/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    
    func comparison()
    {
        if tileOne.internalNum == tileTwo.internalNum {
            print("Onaji")
            FlipToEmo(inputTile: tileTwo)
            FlipToEmo(inputTile: tileOne)
            conqueredArray.append(tileTwo)
            conqueredArray.append(tileOne)
            
            WonTheGemu()
            
        } else {
            print("Chigau")
            FlipBack(inputTile: tileTwo)
            FlipBack(inputTile: tileOne)
        }
    }
    
}

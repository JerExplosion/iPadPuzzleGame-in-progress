//
//  ViewController.swift
//  Kioku Pazuru Gemu
//
//  Created by Jerry Ren on 1/15/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gemuView: UIView!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var gamuWonLabel: UILabel!
    
    var gameMode: Int = 4
    var tileSize: CGFloat!
    
    var tilesArray: Array <MyRaberu> = []
    var centersArray: Array <CGPoint> = []
    
    var gameTime: Int = 0
    var gameTimer: Timer!
    
}









//var numbArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7]

//if let randomu = numbArray.randomElement() {
//
//    numeric = randomu
//
//    numbArray.removeAll {
//        $0 == randomu
//    }
//}

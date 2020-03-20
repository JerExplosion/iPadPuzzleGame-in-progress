//
//  VC+MakeTiles.swift
//  Kioku Pazuru Gemu
//
//  Created by Jerry Ren on 1/21/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

import UIKit

extension ViewController {
    
    func makeTiles() {
        
        tilesArray = []
        centersArray = []
        
        tileSize = gemuView.frame.size.width / CGFloat(gameMode)
        
        let tileCGSize = CGSize(width: tileSize - 5, height: tileSize - 5)
        
        var xCenter = tileSize / 2.0
        var yCenter = tileSize / 2.0
        var numeric = 0
        
        
        for _ in 0...(gameMode-1) {
            for _ in 0..<gameMode {
                
                let tile = MyRaberu(frame: CGRect(origin: CGPoint.zero, size: tileCGSize))
                
                tile.font = UIFont.systemFont(ofSize: 50, weight: UIFont.Weight.bold)
                tile.textAlignment = NSTextAlignment.center
                
                let tileCenter = CGPoint(x: xCenter, y: yCenter)
                
                if numeric >= gameMode * gameMode / 2 {
                    numeric = 0
                }
                
                tile.isUserInteractionEnabled = true 
                
                tile.internalNum = numeric
             //   tile.text = "\(tile.internalNum!)"
                
                var randomu: String  = tileContentArray.randomElement() ?? "🥡"
                tile.text = "\(randomu)"
                
              //  tile.text = "\(MyRaberu.randomu)"
                // how to randomize the correct way I want? darn it
                // -> update: Solved it! haha 
                
                
                
                tilesArray.append(tile)
                centersArray.append(tileCenter)
                
                numeric += 1
                
                tile.center = tileCenter
                
                xCenter += tileSize
                
                tile.backgroundColor = UIColor.darkGray
                gemuView.addSubview(tile)
                
            }
            xCenter = tileSize / 2.0
            yCenter += tileSize
        }
    }
    
    
}

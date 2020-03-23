//
//  MyRaberu.swift
//  Kioku Pazuru Gemu
//
//  Created by Jerry Ren on 1/16/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

import UIKit

let tileContentArray: [String] = ["🥂", "🥭", "🍻", "🥑", "🍸", "🍓", "🍦", "🥥"]

class MyRaberu: UILabel {
    
    var internalNum: Int!
    
    static var question = "❔"  // default pesentation of tiles
    static var emo = "🙃"    // ultimate result when tiles matched
    
    static var randomu: String  = tileContentArray.randomElement() ?? "🥡"
    
                                                    //  ❔❓
    // space + control + command -> shows Emojis
}

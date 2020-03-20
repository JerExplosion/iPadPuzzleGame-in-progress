//
//  ViewControllerTinkerVersion.swift
//  Kioku Pazuru Gemu
//
//  Created by Jerry Ren on 1/21/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

//import UIKit
//
//class ViewController: UIViewController {
//
//    @IBOutlet weak var gemuView: UIView!
//    @IBOutlet weak var timerLabel: UILabel!
//    @IBOutlet weak var gamuWonLabel: UILabel!
//
//    var gameMode: Int = 4
//    var tileSize: CGFloat!
//
//    var tilesArray: Array <MyRaberu> = []
//    var centersArray: Array <CGPoint> = []
//
//    var gameTime: Int = 0
//    var gameTimer: Timer!
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        makeTiles()
//        randomize()
//
//        if (gameTimer != nil) {
//            gameTimer.invalidate()
//            timerLabel.text = "00\' : 00\""
//        }
//        gameTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
//    }
//
//    @objc func timerFunction() {   // selector only takes objc functions
//
//        gameTime += 1
//
//        let gameMin = String(format: "%02d", gameTime / 60)
//        let gameSec = String(format: "%02d", gameTime % 60)
//
//        timerLabel.text = "\(gameMin) : \(gameSec)"   //微调 later
//    }
//
//
//    func randomize() {
//
//        var tempoCentersArray = centersArray
//
//        for randomTile in tilesArray {
//            let randomIndex: Int = Int(arc4random_uniform(UInt32(tempoCentersArray.count)))
//            let randomCenter =  tempoCentersArray[randomIndex]
//            randomTile.center = randomCenter
//            tempoCentersArray.remove(at: randomIndex)
//        }
//
//    }
//
//
//    func makeTiles() {
//
//        tilesArray = []
//        centersArray = []
//
//        tileSize = gemuView.frame.size.width / CGFloat(gameMode)
//
//        let tileCGSize = CGSize(width: tileSize - 5, height: tileSize - 5)
//
//        var xCenter = tileSize / 2.0
//        var yCenter = tileSize / 2.0
//        var numeric = 0
//
//
//        for _ in 0...(gameMode-1) {
//            for _ in 0..<gameMode {
//
//                let tile = MyRaberu(frame: CGRect(origin: CGPoint.zero, size: tileCGSize))
//
//                tile.font = UIFont.systemFont(ofSize: 50, weight: UIFont.Weight.bold)
//                tile.textAlignment = NSTextAlignment.center
//
//                let tileCenter = CGPoint(x: xCenter, y: yCenter)
//
//                if numeric >= gameMode * gameMode / 2 {
//                    numeric = 0
//                }
//
//                tile.internalNum = numeric
//                tile.text = "\(tile.internalNum!)"
//
//                tilesArray.append(tile)
//                centersArray.append(tileCenter)
//
//                numeric += 1
//
//                tile.center = tileCenter
//
//                xCenter += tileSize
//
//                tile.backgroundColor = UIColor.darkGray
//                gemuView.addSubview(tile)
//
//            }
//            xCenter = tileSize / 2.0
//            yCenter += tileSize
//        }
//
//    }
//
//
//
//    @IBAction func resetAction(_ sender: Any) {
//
//
//    }
//
//
//    @IBAction func gemuModeAction(_ sender: Any) {
//
//
//
//    }
//
//
//
//
//
//
//}









//var numbArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7]

//if let randomu = numbArray.randomElement() {
//
//    numeric = randomu
//
//    numbArray.removeAll {
//        $0 == randomu
//    }
//}

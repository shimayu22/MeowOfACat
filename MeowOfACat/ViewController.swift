//
//  ViewController.swift
//  MeowOfACat
//
//  Created by Yutaka Shimada on 2019/02/04.
//  Copyright © 2019 shimayu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func button1(sender:AnyObject){
        playSound(name: "Meow01")
    }
    @IBAction func button2(sender:AnyObject){
        playSound(name: "cat4")
    }
    @IBAction func button3(sender:AnyObject){
        playSound(name: "cat7")
    }
    @IBAction func button4(sender:AnyObject){
        playSound(name: "kitty")
    }
    @IBAction func button5(sender:AnyObject){
        playSound(name: "cat16")
    }
    @IBAction func button6(sender:AnyObject){
        playSound(name: "cat17")
    }

}


extension ViewController: AVAudioPlayerDelegate {
    func playSound(name: String) {
        guard let path = Bundle.main.path(forResource: name, ofType: "mp3") else {
            print("音源ファイルが見つかりません")
            return
        }
        
        do {
            // AVAudioPlayerのインスタンス化
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            
            // AVAudioPlayerのデリゲートをセット
            audioPlayer.delegate = self
            
            // 音声の再生
            audioPlayer.play()
        } catch {
        }
    }
}

//
//  ViewController.swift
//  HelloDear
//
//  Created by Murilo Ramos on 12/7/15.
//  Copyright © 2015 Murilo. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet
    var imageView:UIImageView?
    
    var player:AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageFilePath = NSBundle.mainBundle().pathForResource("main_image", ofType: ".jpg") {
            if let image = UIImage(named: imageFilePath) {
                self.imageView!.image = image
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction
    func playAudio() {
        if player != nil && player!.playing {
            return;
        }
        
        let randomSound = getRandomSound();
        
        print("random \(randomSound)")
        
        if let audioFilePath = NSBundle.mainBundle().pathForResource(randomSound, ofType: ".wav") {
            let audioFileUrl = NSURL.fileURLWithPath(audioFilePath)
            do {
                player = try AVAudioPlayer(contentsOfURL: audioFileUrl)
                player!.prepareToPlay()
                player!.play()
            } catch {
                MessageDialog(controller: self).showInfoDialog("Error when loading audio")
            }
        } else {
            MessageDialog(controller: self).showInfoDialog("Audio not found")
        }
    }
    
    func getRandomSound() -> String {
        let random = randomInt(0, max: 6)
        return Sounds.getStringValue(random);
    }
    
    func randomInt(min: Int, max: Int) -> Int {
        return min + Int(arc4random_uniform(UInt32(max - min + 1)))
    }


}


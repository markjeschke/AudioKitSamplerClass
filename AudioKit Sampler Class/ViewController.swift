//
//  ViewController.swift
//  AudioKit Sampler Class
//
//  Created by Mark Jeschke on 5/7/20.
//  Copyright © 2020 Mark Jeschke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Instance variable of the SoundEngine singleton
    let soundEngine = SoundEngine.shared

    @IBAction func playKick(_ sender: Any) {
        soundEngine.playKick()
    }
    
    @IBAction func playSnare(_ sender: Any) {
        soundEngine.playSmare()
    }
    
    @IBAction func playHiHat(_ sender: Any) {
        soundEngine.playHiHat()
    }
    
}


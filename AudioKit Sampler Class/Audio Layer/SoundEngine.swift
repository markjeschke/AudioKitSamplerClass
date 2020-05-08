//
//  SoundEngine.swift
//  AudioKit Sampler Class
//
//  Created by Mark Jeschke on 5/7/20.
//  Copyright © 2020 Mark Jeschke. All rights reserved.
//

import AudioKit

final class SoundEngine {
    
    static let shared = SoundEngine()
    
    // Create instance variables of the MySampler objects.
    // I renamed them from noise1, noise2, and mySampler1, so that they are descriptive and clear about the intended sounds from each MySampler object.
    var kick: MySampler
    var snare: MySampler
    var hiHat: MySampler
    
    var drumMixer: AKMixer

    init() {
        
        // Instantiate MySampler objects
        kick = MySampler()
        snare = MySampler()
        hiHat = MySampler()
        
        // These drum samples are royalty-free from Music Radar: https://www.musicradar.com/news/drums/1000-free-drum-samples
        kick.loadSample(filePath: "CYCdh_K2room_Kick-08")
        snare.loadSample(filePath: "CYCdh_K2room_Snr-05")
        hiHat.loadSample(filePath: "CYCdh_K2room_ClHat-06")
        
        // Initialize the AudioKit engine settings.
        AKSettings.bufferLength = .medium
        AKSettings.enableRouteChangeHandling = true
        AKSettings.playbackWhileMuted = true
        
        do {
            try AKSettings.setSession(category: .playAndRecord, with: [.defaultToSpeaker, .allowBluetooth, .mixWithOthers])
        } catch {
            AKLog("Could not set session category.")
        }
        
        // Combine the samples into a mixer, so that they can be played together in a single output.
        drumMixer = AKMixer(snare, kick, hiHat)
        AudioKit.output = drumMixer
        
        // Start the audio engine
        try! AudioKit.start()
        
    }
    
    // MARK: Sample Playback Triggers
    
    // The following functions can be triggered via the button actions from the ViewController.
    internal func playKick() {
        try! kick.play(noteNumber: 60, velocity: 127, channel: 0)
    }
    
    internal func playSmare() {
        try! snare.play(noteNumber: 60, velocity: 127, channel: 0)
    }
    
    internal func playHiHat() {
        try! hiHat.play(noteNumber: 60, velocity: 127, channel: 0)
    }
    
}

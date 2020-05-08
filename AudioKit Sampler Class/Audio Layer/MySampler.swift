//
//  MySampler.swift
//  AudioKit Sampler Class
//
//  Created by Mark Jeschke on 5/7/20.
//  Copyright © 2020 Mark Jeschke. All rights reserved.
//

import AudioKit

class MySampler: AKMIDISampler {
    
    internal func loadSample(filePath: String) {
        do {
            try self.loadWav(Constants.sampleDirectoryPath + filePath)
            // This will interpolate a string variable path like this: "Sounds/CYCdh_K2room_Kick-08"
        } catch {
            print("Could not locate the wav file.")
        }
    }
}

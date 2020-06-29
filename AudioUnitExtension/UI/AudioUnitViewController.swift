//
//  AudioUnitViewController.swift
//  AudioUnitExtension
//
//  Created by Muis on 29/06/20.
//  Copyright © 2020 Muis. All rights reserved.
//

import CoreAudioKit

public class AudioUnitViewController: AUViewController, AUAudioUnitFactory {
    var audioUnit: AUAudioUnit?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        if audioUnit == nil {
            return
        }
        
        // Get the parameter tree and add observers for any parameters that the UI needs to keep in sync with the AudioUnit
    }
    
    public func createAudioUnit(with componentDescription: AudioComponentDescription) throws -> AUAudioUnit {
        audioUnit = try AudioUnitExtensionAudioUnit(componentDescription: componentDescription, options: [])
        
        return audioUnit!
    }
    
}

//
//  DataManager.swift
//  Animations
//
//  Created by User on 12.11.2020.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let presets = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationPreset.allCases
    
    private init() {}
}

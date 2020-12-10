//
//  DataManager.swift
//  Animation
//
//  Created by Marat on 10.12.2020.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let preset = Spring.AnimationPreset.allCases
    let curve = Spring.AnimationCurve.allCases
}

//
//  Animation.swift
//  Animation
//
//  Created by Marat on 09.12.2020.
//

struct Animation {
    
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description:String {
        """
        Preset: \(preset)
        Curve: \(curve)
        Force: \(String(format: "%.02f", force))
        Duration: \(String(format: "%.02f", duration))
        Delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        return Animation(preset: DataManager.shared.preset.randomElement()?.rawValue ?? "shake",
                         curve: DataManager.shared.curve.randomElement()?.rawValue ?? "spring",
                         force: Float.random(in: 1...2),
                         duration: Float.random(in: 1...2),
                         delay: Float.random(in: 0...2))
    }
}

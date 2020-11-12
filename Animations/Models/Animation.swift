//
//  Animation.swift
//  Animations
//
//  Created by User on 10.11.2020.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
}

extension Animation {
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: DataManager.shared.presets.randomElement()?.rawValue ?? "",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "",
            force: Float.random(in: 0.5...2),
            duration: Float.random(in: 0.5...2),
            delay: Float.random(in: 0...1)
        )
    }
}


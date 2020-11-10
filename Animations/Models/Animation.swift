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
    static func getAnimationPresets() -> [String] {
        return [
            "slideLeft", "slideRight", "slideDown", "slideUp", "squeezeLeft",
            "squeezeRight", "squeezeDown", "squeezeUp", "fadeIn", "fadeOut",
            "fadeOutIn", "fadeInLeft", "fadeInRight", "fadeInDown", "fadeInUp",
            "zoomIn", "zoomOut", "fall", "shake", "pop", "flipX", "flipY",
            "morph", "squeeze", "flash", "wobble", "swing"
        ]
    }
    
    static func getAnimationCurves() -> [String] {
        return [
            "easeIn", "easeOut", "easeInOut", "linear", "spring", "easeInSine",
            "easeOutSine", "easeInOutSine", "easeInQuad", "easeOutQuad",
            "easeInOutQuad", "easeInCubic", "easeOutCubic", "easeInOutCubic",
            "easeInQuart", "easeOutQuart", "easeInOutQuart", "easeInQuint",
            "easeOutQuint", "easeInOutQuint", "easeInExpo", "easeOutExpo",
            "easeInOutExpo", "easeInCirc", "easeOutCirc", "easeInOutCirc",
            "easeInBack", "easeOutBack", "easeInOutBack"
        ]
    }
}


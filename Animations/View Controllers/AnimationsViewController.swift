//
//  ViewController.swift
//  Animations
//
//  Created by User on 10.11.2020.
//

import Spring

class AnimationsViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet var springView: SpringView!
    @IBOutlet var descriptionLabel: UILabel!
    
    // MARK: - Properties
    let animationPresets = Animation.getAnimationPresets()
    var nextAnimation: Animation!

    override func viewDidLoad() {
        super.viewDidLoad()

        nextAnimation = randomAnimation()
    }
    
    // MARK: - Actions
    @IBAction func nextAnimationPressed(_ sender: SpringButton) {
        // Animation of button
        sender.animation = "pop"
        sender.animate()
        
        descriptionLabel.text = nextAnimation.description
        
        animatingView()
        
        // Generating next animation
        nextAnimation = randomAnimation()
        
        sender.setTitle("Run \(nextAnimation.preset)", for: .normal)
    }
    
    // MARK: - Private methods
    private func randomAnimation() -> Animation {
        Animation(
            preset: Animation.getAnimationPresets().randomElement() ?? "",
            curve: Animation.getAnimationCurves().randomElement() ?? "",
            force: Float.random(in: 0.5...2),
            duration: Float.random(in: 0.5...2),
            delay: Float.random(in: 0...1)
        )
    }
    
    private func animatingView() {
        springView.animation = nextAnimation.preset
        springView.curve = nextAnimation.curve
        springView.force = CGFloat(nextAnimation.force)
        springView.duration = CGFloat(nextAnimation.duration)
        springView.delay = CGFloat(nextAnimation.delay)
        springView.animate()
    }
}

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
    var nextAnimation = Animation.getRandomAnimation()
    
    // MARK: - Actions
    @IBAction func nextAnimationPressed(_ sender: SpringButton) {
        // Animation of button
        sender.animation = "pop"
        sender.animate()
        
        descriptionLabel.text = nextAnimation.description
        
        animatingView()
        
        // Generating next animation
        nextAnimation = Animation.getRandomAnimation()
        
        sender.setTitle("Run \(nextAnimation.preset)", for: .normal)
    }
    
    // MARK: - Private methods
    private func animatingView() {
        springView.animation = nextAnimation.preset
        springView.curve = nextAnimation.curve
        springView.force = CGFloat(nextAnimation.force)
        springView.duration = CGFloat(nextAnimation.duration)
        springView.delay = CGFloat(nextAnimation.delay)
        springView.animate()
    }
}

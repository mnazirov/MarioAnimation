//
//  ViewController.swift
//  Animation
//
//  Created by Marat on 09.12.2020.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var mainSpringView: SpringView!
    @IBOutlet var codeLabel: UILabel!
    @IBOutlet var marioImageView: SpringImageView!
    
    
    private var animations = Animation.getAnimation()
    
    @IBAction func runSpringButtonPussed(_ sender: UIButton) {
        codeLabel.text = animations.description
        
        marioImageView.animation = animations.preset
        marioImageView.curve = animations.curve
        marioImageView.force = CGFloat(animations.force)
        marioImageView.duration = CGFloat(animations.duration)
        marioImageView.delay = CGFloat(animations.delay)
        marioImageView.animate()
        
        animations = Animation.getAnimation()
        sender.setTitle("Run \(animations.preset)", for: .normal)
    }
    
    
    
}


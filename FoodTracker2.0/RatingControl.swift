//
//  RatingControl.swift
//  FoodTracker2.0
//
//  Created by Rollin Francois on 8/19/16.
//  Copyright © 2016 Rollin Francois. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    // ROLLIN: Properties
    var rating = 0
    var ratingButtons = [UIButton]()
    
    

    // ROLLIN: Initializer
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        for _ in 0..<5{
            // Create 5 red button
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
            button.backgroundColor = UIColor.redColor()
            
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(_:)), forControlEvents:
                .TouchDown)
            ratingButtons += [button]
            addSubview(button)
        }
    }
    
    override func layoutSubviews() {
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        
        // Offset each button's origin by the length of the button plus spacing
        for (index, button) in ratingButtons.enumerate() {
            buttonFrame.origin.x = CGFloat(index * (44 + 5))
            button.frame = buttonFrame
        }
        
    }
    
    // Layout button in the stack
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }

    // ROLLIN: Button Action
    func ratingButtonTapped(button: UIButton) {
        print("Button Pressed 👍🏾")
    }
}

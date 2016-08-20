//
//  RatingControl.swift
//  FoodTracker2.0
//
//  Created by Rollin Francois on 8/19/16.
//  Copyright © 2016 Rollin Francois. All rights reserved.
//

import UIKit

class RatingControl: UIView {

    // ROLLIN: Initializer
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Create a red button
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.redColor()
        addSubview(button)
      
    }
    
    // Layout button in the stack
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }

}

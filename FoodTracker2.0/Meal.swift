//
//  Meal.swift
//  FoodTracker2.0
//
//  Created by Rollin Francois on 8/23/16.
//  Copyright © 2016 Rollin Francois. All rights reserved.
//

import UIKit

class Meal {
    
    // ROLLIN: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        // Initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
        
        // Initialization should fail if there is no name of if the rating is negative
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}

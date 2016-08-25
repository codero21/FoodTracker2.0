//
//  FoodTracker2_0Tests.swift
//  FoodTracker2.0Tests
//
//  Created by Rollin Francois on 8/16/16.
//  Copyright © 2016 Rollin Francois. All rights reserved.
//

import UIKit
import XCTest
@testable import FoodTracker2_0

class FoodTracker2_0Tests: XCTestCase {
    
    // FoodTracker2.0 Tests
    
    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided
    func testMealInitialization() {
        // Success case
        let potentialItem = Meal(name: "Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases
        let noName = Meal(name: "", photo: nil, rating: 3)
        XCTAssertNil(noName, "Empty name is invalid")
        
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating)
        
    }
    
}

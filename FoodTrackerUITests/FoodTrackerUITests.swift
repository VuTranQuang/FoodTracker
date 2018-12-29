//
//  FoodTrackerUITests.swift
//  FoodTrackerUITests
//
//  Created by Vũ on 12/14/18.
//  Copyright © 2018 Vũ. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerUITests: XCTestCase {
    //MARK: Meal Class Tests
    // Confirm that the Meal initializer returns a Meal object When passed valid parameters.
    func testMealInitializationSucceeds() {

        // Zero rating
                let zeroRatingMeal = Meal(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)

        // Highest positive rating
        let positiveRatingMeal = Meal(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }

        // Confirm that the Meal initializer returns nil when passed a negative rating or an empty name.
        func testMealInitializationFails() {

            // Negative rating
            let negativeRatingMeal = Meal(name: "Negative", photo: nil, rating: -1)
            XCTAssertNil(negativeRatingMeal)

            // Rating exceeds Maxium
            let largeRatingMeal = Meal(name: "Large", photo: nil, rating: 6)
            XCTAssertNil(largeRatingMeal)
            
            // Empty String
            let emptyStringMeal = Meal(name: "", photo: nil, rating: 0)
            XCTAssertNil(emptyStringMeal)
        }
    
        

}

//
//  FoodTrackTests.swift
//  FoodTrackTests
//
//  Created by ANDY on 2016-04-10.
//  Copyright © 2016 ANDY. All rights reserved.
//

import XCTest
@testable import FoodTrack

class FoodTrackTests: XCTestCase {
    
    // MARK: FoodTracker Texts
    
    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided
    
    func testMealInitialization() {
        // Success case.
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // No name
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating)
    }
}

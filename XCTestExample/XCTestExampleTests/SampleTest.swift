//
//  SampleTest.swift
//  XCTestExampleTests
//
//  Created by Priyal PORWAL on 19/02/23.
//

import XCTest

final class SampleTest: XCTestCase {
    let sample = Sample()
//    var sample: Sample!
//
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        print("setup - SampleTest identifier \(ObjectIdentifier(self))")
//        sample = Sample()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
//        sample = nil
    }

    func testExample() {
        sample.changeState()

        XCTAssertEqual(sample.state, 1)
    }

    func testExample2() {
        sample.changeState()
//        XCTAssertEqual(sample.state, 2) // Failing test - XCTAssertEqual failed: ("1") is not equal to ("2")
        XCTAssertEqual(sample.state, 1)
    }

    class Sample {
        var state = 0

        func changeState() {
            state += 1
        }
    }
}

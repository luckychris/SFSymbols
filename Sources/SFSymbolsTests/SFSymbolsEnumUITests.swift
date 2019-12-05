//
//  SFSymbolsEnumUITests.swift
//  SFSymbolsEnumUITests
//
//  Created by Christoph Duyster on 04.12.19.
//  Copyright © 2019 Christoph Duyster. All rights reserved.
//

import XCTest

class SFSymbolsEnumUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        XCTAssert(app.tables.count > 0)
        XCTAssert(app.tables.staticTexts.element(boundBy: 1).label == "00.circle")
        XCTAssert(app.tables.staticTexts.element(boundBy: 10).label == "1.circle.fill")

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}

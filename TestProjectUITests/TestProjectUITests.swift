//
//  TestProjectUITests.swift
//  TestProjectUITests
//
//  Created by SF on 01.06.2021.
//

import XCTest

class TestProjectUITests: XCTestCase {
    
    let expectedFullname = "Петров Петр"
    let expectedFriends = "Иванов Иван\nСергеев Сергей"
    let expectedCity = "Москва"
    let expectedClosed = false
    
    override func setUpWithError() throws {}

    override func tearDownWithError() throws {}
    
    func testNavigationAndExisting() throws {
        let app = XCUIApplication()
        app.launch()
        app.tables["myTable"].staticTexts["0"].tap()
        
        let fullname = app.staticTexts["MyFullname"]
        XCTAssertTrue(fullname.exists)
        
        let friends = app.staticTexts["MyFriendsLabel"]
        XCTAssertTrue(friends.exists)
        
        let city = app.staticTexts["MyCityLabel"]
        XCTAssertTrue(city.exists)
        
        let closed = app.switches["MyClosed"]
        XCTAssertTrue(closed.exists)
    }
    
    func testData() throws {
        let app = XCUIApplication()
        app.launch()
        app.tables["myTable"].staticTexts["0"].tap()
        
        let fullname = app.staticTexts["MyFullname"].label
        XCTAssertEqual(fullname, expectedFullname)
        
        let friends = app.staticTexts["MyFriendsLabel"].label
        XCTAssertEqual(friends, expectedFriends)
        
        let city = app.staticTexts["MyCityLabel"].label
        XCTAssertEqual(city, expectedCity)
        
        let closed = app.switches["MyClosed"].isSelected
        XCTAssertEqual(closed, expectedClosed)
    }
    
    func testRecording() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tables["myTable"]/*@START_MENU_TOKEN@*/.staticTexts["0"]/*[[".cells[\"tableViewCell\"]",".staticTexts[\"Петров Петр\"]",".staticTexts[\"0\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["MyFullname"]/*[[".staticTexts[\"Петров Петр\"]",".staticTexts[\"MyFullname\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["MyCityLabel"]/*[[".staticTexts[\"Москва\"]",".staticTexts[\"MyCityLabel\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["MyFriendsLabel"]/*[[".staticTexts[\"Иванов Иван\\nСергеев Сергей\"]",".staticTexts[\"MyFriendsLabel\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.switches["MyClosed"].tap()
        
    }
}

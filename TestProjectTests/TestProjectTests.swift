//
//  TestProjectTests.swift
//  TestProjectTests
//
//  Created by SF on 01.06.2021.
//

import XCTest

@testable import TestProject

class TestProjectTests: XCTestCase {
    
    let mockUser = UserMock(firstName: "Andry", lastName: "Jigo", bio: "I love sf", city: "Moscow", friends: [], isClosed: true)
    let newFriend = UserMock(firstName: "Sam", lastName: "Majow", bio: "I love sf", city: "St.Petersburg", friends: [], isClosed: false)
    let newFirstName = "Alex"
    let newLastName = "Ivanov"
    let newBio = "New bio"
    let newCity = "New city"
    let newClosed = false
    
    func testChangeFirstName() throws {
        mockUser.changeName(newFirstName)
        XCTAssertTrue(mockUser.firstNameChangedCount > 0)
        XCTAssertTrue(mockUser.isChangedFirstName)
        XCTAssertTrue(mockUser.firstName == newFirstName)
    }
    
    func testChangeLastName() throws {
        mockUser.changeLastName(newLastName)
        XCTAssertTrue(mockUser.lastNameChangedCount > 0)
        XCTAssertTrue(mockUser.isChangedLastName)
        XCTAssertTrue(mockUser.lastName == newLastName)
    }
    
    func testChangeCity() throws {
        mockUser.changeCity(newCity)
        XCTAssertTrue(mockUser.cityChangedCount > 0)
        XCTAssertTrue(mockUser.isChangedCity)
        XCTAssertTrue(mockUser.city == newCity)
    }
    
    func testChangeClosed() throws {
        mockUser.changeClosed(newClosed)
        XCTAssertTrue(mockUser.isClosedChangedCount > 0)
        XCTAssertTrue(mockUser.isChangedClosed)
        XCTAssertTrue(mockUser.isClosed == newClosed)
    }
    
    func testChangeBio() throws {
        mockUser.changeBio(newBio)
        XCTAssertTrue(mockUser.bioChangedCount > 0)
        XCTAssertTrue(mockUser.isChangedBio)
        XCTAssertTrue(mockUser.bio == newBio)
    }
    
    func testChangeAddFriend() throws {
        mockUser.addFriend(newFriend)
        XCTAssertTrue(mockUser.friendsChangedCount > 0)
        XCTAssertTrue(mockUser.isChangedFriends)
        XCTAssertTrue(mockUser.friends.contains(newFriend))
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}

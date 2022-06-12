//
//  UserMock.swift
//  TestProject
//
//  Created by Danil Ryumin on 11.06.2022.
//

class UserMock : User {
    var firstNameChangedCount = 0
    var lastNameChangedCount = 0
    var bioChangedCount = 0
    var cityChangedCount = 0
    var friendsChangedCount = 0
    var isClosedChangedCount = 0
    
    var isChangedFirstName = false
    var isChangedLastName = false
    var isChangedBio = false
    var isChangedCity = false
    var isChangedFriends = false
    var isChangedClosed = false
    
    override func changeCity(_ city: String) {
        cityChangedCount += 1
        isChangedCity = true
        self.city = city
    }
    
    override func changeClosed(_ isClosed: Bool) {
        isClosedChangedCount += 1
        isChangedClosed = true
        self.isClosed = isClosed
    }
    
    override func changeName(_ firstName: String) {
        firstNameChangedCount += 1
        isChangedFirstName = true
        self.firstName = firstName
    }
    
    override func changeLastName(_ lastName: String) {
        lastNameChangedCount += 1
        isChangedLastName = true
        self.lastName = lastName
    }
    
    override func changeBio(_ bio: String) {
        bioChangedCount += 1
        isChangedBio = true
        self.bio = bio
    }
    
    override func addFriend(_ friend: User) {
        friendsChangedCount += 1
        isChangedFriends = true
        friends.append(friend)
    }
}

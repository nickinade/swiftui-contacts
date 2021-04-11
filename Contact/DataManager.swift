//
//  DataManager.swift
//  Contact
//
//  Created by Nikita Benin on 10.04.2021.
//

import Foundation

struct Person: Hashable {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        return "\(name) \(surname)"
    }
    
    static func mockObject() -> Person {
        return Person(name: "Apple", surname: "Seed", phone: "123456789", email: "seed@apple.com")
    }
}

class DataManager {
    
    static let shared = DataManager()
    var contacts: [Person] = []
    
    private var names = ["Alex", "Ben", "Bob", "Mike", "Ann", "Marta", "Brad", "Jhon"]
    private var surnames = ["Bell", "Apple", "Nixon", "Nelson", "Mithces", "Ramires", "Sanders", "Linderman"]
    private var emails = ["fanta", "apple", "ghost", "tree", "rino", "fox", "wolf", "aaabbb"]
    private var phones = ["123456", "623424234", "23423423", "4234234", "4234234" , "4234234", "234234234", "234234"]
    
    private init() {
        contacts = generateContacts()
    }
    
    private func generateContacts() -> [Person] {
        
        var persons = [Person]()
        
        while !names.isEmpty, !surnames.isEmpty, !phones.isEmpty, !emails.isEmpty {
            let name = names.remove(at: Int.random(in: 0..<names.count))
            let surname = surnames.remove(at: Int.random(in: 0..<surnames.count))
            let phone = phones.remove(at: Int.random(in: 0..<phones.count))
            let email = emails.remove(at: Int.random(in: 0..<emails.count))
            
            let randomPerson = Person(
                                    name: name,
                                    surname: surname,
                                    phone: phone,
                                    email: "\(email)@icloud.com"
                                )
            persons.append(randomPerson)
        }
        
        return persons
    }
}

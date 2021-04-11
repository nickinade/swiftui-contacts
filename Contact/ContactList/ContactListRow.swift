//
//  ContactListRow.swift
//  Contact
//
//  Created by Nikita Benin on 11.04.2021.
//

import SwiftUI

struct ContactListRow: View {
    
    let person: Person
    
    var body: some View {
        Text(person.fullName)
    }
}

struct ContactListRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactListRow(person: Person.mockObject())
    }
}

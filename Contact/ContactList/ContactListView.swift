//
//  ContactListView.swift
//  Contact
//
//  Created by Nikita Benin on 10.04.2021.
//

import SwiftUI

struct ContactListView: View {
    
    private let persons = DataManager.shared.contacts
    
    var body: some View {
        NavigationView {
            List(persons, id: \.self) { person in
                NavigationLink(destination: ContactDetailsView(person: person)) {
                    ContactListRow(person: person)
                }
            }
            .navigationBarTitle("Contact list")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}

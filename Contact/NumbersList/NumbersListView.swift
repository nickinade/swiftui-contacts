//
//  NumbersListView.swift
//  Contact
//
//  Created by Nikita Benin on 11.04.2021.
//

import SwiftUI

struct NumbersListView: View {
    
    private let persons = DataManager.shared.contacts
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons, id: \.self) { person in
                    Section(header: Text("\(person.fullName)")) {
                        DetailsRow(imageName: "phone", text: "\(person.phone)")
                        DetailsRow(imageName: "mail", text: "\(person.email)")
                    }
                }
                .textCase(nil)
            }
            .navigationBarTitle("Contact list")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct NumbersListView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersListView()
    }
}

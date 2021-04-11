//
//  ContactDetailsView.swift
//  Contact
//
//  Created by Nikita Benin on 11.04.2021.
//

import SwiftUI

struct ContactDetailsView: View {
    
    let person: Person
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            VStack {
                VStack(spacing: 15) {
                    Divider()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding()
                    Divider()
                    DetailsRow(imageName: "phone", text: "\(person.phone)")
                        .padding(.horizontal)
                    Divider()
                    DetailsRow(imageName: "mail", text: "\(person.email)")
                        .padding(.horizontal)
                    Divider()
                }
                .background(Color.white)
                .offset(y: 30)
                Spacer()
            }
        }
        .navigationBarTitle(person.fullName)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContactDetailsView(person: Person.mockObject())
        }
    }
}

//
//  ContentView.swift
//  Contact
//
//  Created by Nikita Benin on 10.04.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ContactListView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            NumbersListView()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

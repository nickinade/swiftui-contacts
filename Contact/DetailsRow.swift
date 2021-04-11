//
//  DetailsRow.swift
//  Contact
//
//  Created by Nikita Benin on 11.04.2021.
//

import SwiftUI

struct DetailsRow: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        HStack{
            Image(systemName: imageName)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text(text)
            Spacer()
        }
    }
}

struct DetailsRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailsRow(imageName: "airplane", text: "2341")
    }
}

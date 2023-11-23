//
//  AddBookView.swift
//  BookSpaceUI
//
//  Created by Beniamino Gentile on 22/11/23.
//

import SwiftUI

struct AddBookView: View {
    
    var body: some View {
        VStack {
            Image("nobookimage")
                .resizable()
            Button(action: {}){
                Text("Edit Image")
            }
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .foregroundStyle(.white)
            .background(.teal)
            .padding()
        }
        //TextField("Title", text: $)
        
    }
}

#Preview {
    AddBookView()
}

//
//  AddBookView.swift
//  BookSpaceUI
//
//  Created by Beniamino Gentile on 22/11/23.
//

import SwiftUI

struct AddBookView: View {
    @Binding var books: [Book]
    @State private var newBook: Book = Book.emptyBook
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Image("nobookimage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .accessibilityHidden(true)
                    Button(action: {}){
                        Text("Edit Image")
                    }
                    .accessibilityHidden(true)
                    .padding()
                    .background(.teal)
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
                }
                Section("Title"){
                    HStack {
                        TextField("Insert the title...", text: $newBook.bookName)
                        Button(action:{}){
                            Image(systemName: "plus.circle.fill")
                                .accessibilityLabel("Add Book Name")
                        }
                    }
                    .padding()
                }
                Section("Author"){
                    HStack {
                        TextField("Insert the author...", text: $newBook.author)
                        Button(action:{}){
                            Image(systemName: "plus.circle.fill")
                                .accessibilityLabel("Add Book Author")
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    AddBookView(books: .constant(Book.sampleData))
}

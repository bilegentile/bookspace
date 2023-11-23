//
//  ContentView.swift
//  BookSpaceUI
//
//  Created by Beniamino Gentile on 20/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    @Binding var books: [Book]
    
    @State private var newBook: Book = Book.emptyBook
    @State private var isPresentingNewBookView = false

    var body: some View {
        NavigationStack {
            List(books){ book in
                NavigationLink(destination: BookDetailView(book: book)) {
                    CardView(book: book)
                }
            }
            .listRowSpacing(18)
            .navigationTitle("Library")
            .searchable(text: $searchText)
            .toolbar{
                Button(action: {
                    isPresentingNewBookView = true
                }) {
                    Image(systemName: "plus")
                        .foregroundColor(.teal)
                }
                .accessibilityLabel("New Book")
                Button(action: {}) {
                    Image(systemName: "ellipsis.circle")
                        .foregroundColor(.teal)
                }
                .accessibilityLabel("Filter Books")
            }
            .sheet(isPresented: $isPresentingNewBookView) {
                NavigationStack{
                    AddBookView(books: $books)
                        .navigationTitle("New Book")
                        .toolbar {
                            ToolbarItem(placement: .cancellationAction) {
                                Button("Cancel") {
                                    isPresentingNewBookView = false
                                }
                                .foregroundStyle(.red)
                            }
                            ToolbarItem(placement: .confirmationAction) {
                                Button("Save") {
                                    isPresentingNewBookView = false
                                }
                                .foregroundStyle(.teal)
                            }
                        }
                }
            }
        }
        
    }
}

#Preview {
    ContentView(books: .constant(Book.sampleData))
}

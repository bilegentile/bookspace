//
//  ContentView.swift
//  BookSpaceUI
//
//  Created by Beniamino Gentile on 20/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    @State var books: [Book]

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
                Button(action: {}) {
                    Image(systemName: "plus")
                        .foregroundColor(.teal)
                }
                Button(action: {}) {
                    Image(systemName: "ellipsis.circle")
                        .foregroundColor(.teal)
                }
            }
        }
        
    }
}

#Preview {
    ContentView(books: Book.sampleData)
}

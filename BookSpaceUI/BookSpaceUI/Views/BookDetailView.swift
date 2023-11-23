//
//  BookDetailView.swift
//  BookSpaceUI
//
//  Created by Beniamino Gentile on 21/11/23.
//

import SwiftUI

struct BookDetailView: View {
    let book: Book
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical){
                VStack {
                    HStack {
                        Button(action: {}){
                                Image(systemName: "book.fill")
                        }
                        .padding()
                        .background(.orange)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        Button(action: {}){
                            Image(systemName: "pencil")
                            Text("Edit")
                        }
                        .padding()
                        .background(.teal)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    Image(book.cover)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 10), style: FillStyle())
                        .padding(100)
                    Text(book.bookName)
                        .font(.title)
                        .bold()
                    Text(book.author)
                        .font(.subheadline)
                }
            }
            }
        }
        
    }

#Preview {
    BookDetailView(book: Book.sampleData[0])
}

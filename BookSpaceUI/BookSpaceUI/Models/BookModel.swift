//
//  BookModel.swift
//  BookSpaceUI
//
//  Created by Beniamino Gentile on 20/11/23.
//

import Foundation

struct Book: Identifiable {
    let id: UUID = UUID()
    var bookName: String
    var author: String
    var cover: String = "nobookimage"
    
    var finished: Bool?
    
    init(bookName: String, author: String, cover: String, finished: Bool) {
        self.bookName = bookName
        self.author = author
        self.cover = cover
        self.finished = finished
    }
    
    init(bookName: String, author: String, cover: String) {
        self.bookName = bookName
        self.author = author
        self.cover = cover
    }
}

extension Book {
    static var emptyBook: Book {
        Book(bookName: "", author: "", cover: "nobookimage", finished: false)
    }
    
    static let sampleData: [Book] =
    [
        Book(bookName: "Dracula", author: "Bram Stoker", cover: "dracula_cover", finished: true),
        Book(bookName: "Siddartha", author: "Herman Hesse", cover: "siddartha_cover")
    ]
}

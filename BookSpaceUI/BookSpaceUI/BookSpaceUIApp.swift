//
//  BookSpaceUIApp.swift
//  BookSpaceUI
//
//  Created by Beniamino Gentile on 20/11/23.
//

import SwiftUI

@main
struct BookSpaceUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(books: Book.sampleData)
        }
    }
}

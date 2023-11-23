//
//  CardView.swift
//  BookSpaceUI
//
//  Created by Beniamino Gentile on 20/11/23.
//

import SwiftUI

struct CardView: View {
    let book: Book
    
    var body: some View {
            HStack(spacing: 45) {
                Image(book.cover)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                
                VStack (alignment: .leading) {
                    Text(book.bookName)
                        .font(.headline)
                        .accessibilityAddTraits(.isHeader)
                    Text(book.author)
                        .font(.subheadline)
                }
                Spacer()
                VStack(spacing: 15) {
                    Image(systemName: "book.fill")
                        .foregroundColor(.orange)
                    if(book.finished == true){
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                    }
                }
            }
            .frame(width: 350, height: 150)
    }
}

#Preview {
    CardView(book: Book.sampleData[0])
        .previewLayout(.fixed(width: 400, height: 60))
}

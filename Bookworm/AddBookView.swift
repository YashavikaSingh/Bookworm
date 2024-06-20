//
//  AddBookView.swift
//  Bookworm
//
//  Created by Yashavika Singh on 19.06.24.
//

import SwiftUI

struct AddBookView: View {
    
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    @State private var title = ""
    @State private var author = ""
    @State private var genre = "Fantasy"
    @State private var review = ""
    @State private var rating = 3
    
    let genres = ["Fantasy", "Horror", "Kids", "Mystery", "Poetry", "Romance", "Thriller"]
    var body: some View {
        NavigationStack{
            Form{
               
                Section{
                    TextField("Author", text: $author)
                    TextField("Title", text: $title)

                    Picker("genre", selection: $genre)
                    {
                        ForEach(genres, id: \.self){
                            genre in Text(genre)
                        }
                    }
                }
                    
                
                
                Section("Write a review"){
                    TextField("Review", text: $review)
                    
                    RatingView(rating: $rating)
                    
                }
                
                Section{
                    Button("Save"){
                        let newBook =  Book(title: title, author: author, genre: genre, review: review, rating: rating)
                        modelContext.insert(newBook)
                        dismiss()
                    }
                }
          
                     
                
               
            }.navigationTitle("Add book")
        }
    
       
    }
}

#Preview {
    AddBookView()
}

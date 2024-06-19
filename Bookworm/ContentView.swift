//
//  ContentView.swift
//  Bookworm
//
//  Created by Yashavika Singh on 18.06.24.
//
import SwiftData
import SwiftUI


struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @State private var showingAddScreen  = false
    @Query var books: [Book]
    var body: some View {
        NavigationStack{
            Text("Count: \(books.count)").navigationTitle("BookWorm")
                .toolbar(){
                    ToolbarItem(placement: .topBarTrailing)
                    {
                        Button("Add Book", systemImage: "plus"){
                            showingAddScreen.toggle()
                        }
                    }
                   
                }
            
                .sheet(isPresented: $showingAddScreen, content: {
                   AddBookView()
                })
        }
  
    }
}

#Preview {
    ContentView()
}

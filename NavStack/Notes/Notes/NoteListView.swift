//
//  NoteListView.swift
//  Notes
//
//  Created by Prem Kumar on 19/01/26.
//

import SwiftUI

struct NoteListView: View {
    var notes = Notes.notes
    var body: some View {
        NavigationStack{
            List{
                
                ForEach(notes) { note in
                    NavigationLink{
                        NoteDetailView(note: note)
                    } label: {
                        NoteCardView(note: note)
                    }
                    
                }
            }
            .navigationTitle("My Notes")
            
        }
    }
}

#Preview {
    NoteListView()
}

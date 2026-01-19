//
//  NoteDetailView.swift
//  Notes
//
//  Created by Prem Kumar on 19/01/26.
//

import SwiftUI

struct NoteDetailView: View {
    var note: Notes
    
    init(note: Notes) {
        self.note = note
        print("Init called for \(note.title)")
    }
    var body: some View {
        List{
            Text(note.subTitle)
            Text(note.description)
                .listRowSeparator(.hidden)
        }
        .navigationTitle(note.title)
    }
}

#Preview {
    NavigationStack{
        NoteDetailView(note: Notes.notes[0])
    }
}

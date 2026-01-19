//
//  NoteCardView.swift
//  Notes
//
//  Created by Prem Kumar on 19/01/26.
//

import SwiftUI

struct NoteCardView: View {
    var note: Notes
    var body: some View {
        HStack{
            Image(systemName: "music.note")
                .font(.largeTitle)
            VStack(alignment: .leading){
                Text(note.title)
                    .font(.headline)
                Text(note.subTitle)
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    NoteCardView(note: Notes.notes[0])
}

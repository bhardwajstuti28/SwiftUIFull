//
//  DataModel.swift
//  Notes
//
//  Created by Prem Kumar on 19/01/26.
//

import Foundation

struct Notes: Identifiable{
    var id: String{
        title + subTitle + description
    }
    var title: String
    var subTitle: String
    var description: String
    
    static let notes: [Notes] = [
        Notes(title: "Title 1", subTitle: "Subtitle 1", description: "Description 1"),
        Notes(title: "Title 2", subTitle: "Subtitle 2", description: "Description 2"),
        Notes(title: "Title 3", subTitle: "Subtitle 3", description: "Description 3"),
        Notes(title: "Title 4", subTitle: "Subtitle 4", description: "Description 4"),
        Notes(title: "Title 5", subTitle: "Subtitle 5", description: "Description 5")
    ]
    
}

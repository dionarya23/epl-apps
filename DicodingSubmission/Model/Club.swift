//
//  Club.swift
//  DicodingSubmission
//
//  Created by Dion Arya Pamungkas on 04/01/24.
//

import Foundation

struct Club: Identifiable {
    var id = UUID()
    var name: String
    var abbreviation: String
    var imageName: String
    var location: String
    var matches: [Match]
    var players: [Player]
}

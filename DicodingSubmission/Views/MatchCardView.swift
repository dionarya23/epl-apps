//
//  MatchCardView.swift
//  DicodingSubmission
//
//  Created by Dion Arya Pamungkas on 04/01/24.
//

import SwiftUI

struct MatchCardView: View {
    let matches: [Match]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(matches, id: \.date) { match in
                    MatchCard(match: match)
                        .padding(.trailing, 10)
                }
            }
        }
        .frame(height: 120)
        .transition(.move(edge: .bottom))
    }
}

#Preview {
    MatchCardView(matches: [
        Match(team1Logo: "man_city", team2Logo: "arsenal", team1Score: 1, team2Score: 2, date: "2024-01-05"),
        Match(team1Logo: "man_city", team2Logo: "tottenham", team1Score: 3, team2Score: 0, date: "2024-01-11"),
        Match(team1Logo: "man_city", team2Logo: "leicester", team1Score: 2, team2Score: 2, date: "2024-01-16")
    ])
}

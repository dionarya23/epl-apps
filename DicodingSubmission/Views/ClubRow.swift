//
//  ClubRow.swift
//  DicodingSubmission
//
//  Created by Dion Arya Pamungkas on 04/01/24.
//

import SwiftUI

struct ClubRow: View {
    var club: Club
    var body: some View {
        HStack {
            Image(club.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 65, height: 65)
                .cornerRadius(8)

            VStack(alignment: .leading, spacing: 5) {
                Text(club.name)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.light)

                Text(club.abbreviation)
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
            .padding(.leading, 16)
        }
    }
}

#Preview {
    ClubRow(club: Club(
            name: "Manchester City",
            abbreviation: "#MCI",
            imageName: "man_city",
            location: "Manchester",
            matches: [
            Match(team1Logo: "man_city", team2Logo: "arsenal", team1Score: 1, team2Score: 2, date: "2024-01-05"),
            Match(team1Logo: "man_city", team2Logo: "tottenham", team1Score: 3, team2Score: 0, date: "2024-01-11"),
            Match(team1Logo: "man_city", team2Logo: "leicester", team1Score: 2, team2Score: 2, date: "2024-01-16"),
            ],
            players: [
            Player(name: "Kevin De Bruyne", position: "Midfielder", squadNumber: 17),
            Player(name: "Raheem Sterling", position: "Forward", squadNumber: 7),
            Player(name: "Ruben Dias", position: "Defender", squadNumber: 3),
            ]
        )
    )
}

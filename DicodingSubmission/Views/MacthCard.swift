//
//  MacthCard.swift
//  DicodingSubmission
//
//  Created by Dion Arya Pamungkas on 04/01/24.
//

import SwiftUI

struct MatchCard: View {
    var match: Match

    var body: some View {
        VStack {
            HStack {
                Image(match.team1Logo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .cornerRadius(8)

                Text("\(match.team1Score) - \(match.team2Score)")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Image(match.team2Logo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .cornerRadius(8)
            }
            .padding()

            Text(formatDate(match.date))
                .font(.subheadline)
                .foregroundColor(.white)
                .fontWeight(.light)
        }
        .frame(width: 250, height: 150)
        .background(Color("SecondColor"))
        .cornerRadius(10)
        .padding(.top, 10)
    }
    
    func formatDate(_ dateString: String) -> String {
        let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            if let date = dateFormatter.date(from: dateString) {
                dateFormatter.dateFormat = "MMM d, yyyy"
                return dateFormatter.string(from: date)
            } else {
                return "Invalid Date"
            }
        }
}

#Preview {
    MatchCard(match: Match(team1Logo: "arsenal", team2Logo: "mu", team1Score: 10, team2Score: 0, date: "2024-01-05"))
}

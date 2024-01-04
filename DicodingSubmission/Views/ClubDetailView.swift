//
//  ClubDetailView.swift
//  DicodingSubmission
//
//  Created by Dion Arya Pamungkas on 04/01/24.
//

import SwiftUI

struct ClubDetailView: View {
    var club: Club
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        ZStack {
            Color("AccentColor").ignoresSafeArea()
            VStack {
                Spacer()
                
                VStack {
                    Image(club.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
                        .frame(width: 200, height: 200)
                        .padding()

                    Text(club.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)

                    HStack {
                        Image(systemName: "location.fill")
                            .foregroundColor(.gray)
                        Text(club.location)
                            .font(.title3)
                            .foregroundColor(.gray)
                            .fontWeight(.light)
                    }

                    VStack(alignment: .leading) {
                        Text("Matches")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.leading, 16)
                            .padding(.top, 16)

                        MatchCardView(matches: club.matches)
                            .padding()
                    }

                    VStack(alignment: .leading) {
                        Text("Players")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.leading, 16)
                            .padding(.top, 16)

                        PlayerCardView(players: club.players)
                            .padding()
                    }
                }
                .padding(.top, 16)
                .background(Color.clear) // Clear background to avoid overlapping with ZStack background

                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
    }


    private var backButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "arrow.left")
                    .foregroundColor(Color("NavColor"))
                    .imageScale(.medium)
                    .frame(width: 24, height: 24)
            }
        }
    }
}

#Preview {
    ClubDetailView(club:   Club(
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

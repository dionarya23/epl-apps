//
//  ClubController.swift
//  DicodingSubmission
//
//  Created by Dion Arya Pamungkas on 04/01/24.
//

import Foundation

class ClubController: ObservableObject {
    @Published var premierLeagueClubs = [
        Club(
            name: "Arsenal",
            abbreviation: "#AFC",
            imageName: "arsenal",
            location: "North London",
            matches: [
                Match(team1Logo: "arsenal", team2Logo: "man_city", team1Score: 12, team2Score: 1, date: "2024-01-05"),
                Match(team1Logo: "arsenal", team2Logo: "chelsea", team1Score: 11, team2Score: 0, date: "2024-01-10"),
                Match(team1Logo: "arsenal", team2Logo: "liverpool", team1Score: 13, team2Score: 0, date: "2024-01-15"),
            ],
            players: [
                Player(name: "Martin Ødegaard", position: "Forward", squadNumber: 8),
                Player(name: "Bukayo Saka", position: "Midfielder", squadNumber: 7),
                Player(name: "Thomas Partey", position: "Midfielder", squadNumber: 18),
            ]
        ),

        Club(
            name: "Manchester United",
            abbreviation: "#MUN",
            imageName: "mu",
            location: "Manchester",
            matches: [
                Match(team1Logo: "mu", team2Logo: "tottenham", team1Score: 2, team2Score: 2, date: "2024-01-06"),
                Match(team1Logo: "mu", team2Logo: "west_ham", team1Score: 3, team2Score: 1, date: "2024-01-12"),
                Match(team1Logo: "mu", team2Logo: "everton", team1Score: 1, team2Score: 0, date: "2024-01-18"),
            ],
            players: [
                Player(name: "Bruno Fernandes", position: "Midfielder", squadNumber: 18),
                Player(name: "Marcus Rashford", position: "Forward", squadNumber: 10),
                Player(name: "Harry Maguire", position: "Defender", squadNumber: 5),
            ]
        ),

        Club(
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
        ),

        Club(
            name: "Chelsea",
            abbreviation: "#CFC",
            imageName: "chelsea",
            location: "West London",
            matches: [
                Match(team1Logo: "chelsea", team2Logo: "man_city", team1Score: 0, team2Score: 1, date: "2024-01-07"),
                Match(team1Logo: "chelsea", team2Logo: "arsenal", team1Score: 0, team2Score: 1, date: "2024-01-13"),
                Match(team1Logo: "chelsea", team2Logo: "tottenham", team1Score: 2, team2Score: 2, date: "2024-01-19"),
            ],
            players: [
                Player(name: "Christopher Nkunku", position: "Forward", squadNumber: 18),
                Player(name: "Enzo Fernadez", position: "Midfielder", squadNumber: 8),
                Player(name: "Robert Sánchez", position: "Goalkeeper", squadNumber: 1),
            ]
        ),
        Club(
            name: "Liverpool",
            abbreviation: "#LFC",
            imageName: "liverpool",
            location: "Liverpool",
            matches: [
                Match(team1Logo: "liverpool", team2Logo: "west_ham", team1Score: 3, team2Score: 1, date: "2024-01-08"),
                Match(team1Logo: "liverpool", team2Logo: "everton", team1Score: 2, team2Score: 0, date: "2024-01-14"),
                Match(team1Logo: "liverpool", team2Logo: "arsenal", team1Score: 0, team2Score: 3, date: "2024-01-20"),
            ],
            players: [
                Player(name: "Mohamed Salah", position: "Forward", squadNumber: 11),
                Player(name: "Virgil van Dijk", position: "Defender", squadNumber: 4),
                Player(name: "Sadio Mané", position: "Forward", squadNumber: 10),
            ]
        ),
        Club(
            name: "Tottenham Hotspur",
            abbreviation: "#TOT",
            imageName: "tottenham",
            location: "North London",
            matches: [
                Match(team1Logo: "tottenham", team2Logo: "mu", team1Score: 2, team2Score: 2, date: "2024-01-09"),
                Match(team1Logo: "tottenham", team2Logo: "chelsea", team1Score: 2, team2Score: 2, date: "2024-01-15"),
                Match(team1Logo: "tottenham", team2Logo: "man_city", team1Score: 0, team2Score: 3, date: "2024-01-21"),
            ],
            players: [
                Player(name: "Harry Kane", position: "Forward", squadNumber: 10),
                Player(name: "Son Heung-Min", position: "Forward", squadNumber: 7),
                Player(name: "Hugo Lloris", position: "Goalkeeper", squadNumber: 1),
            ]
        ),
        Club(
            name: "Leicester City",
            abbreviation: "#LEI",
            imageName: "leicester",
            location: "Leicester",
            matches: [
                Match(team1Logo: "leicester", team2Logo: "liverpool", team1Score: 1, team2Score: 2, date: "2024-01-10"),
                Match(team1Logo: "leicester", team2Logo: "west_ham", team1Score: 2, team2Score: 1, date: "2024-01-16"),
                Match(team1Logo: "leicester", team2Logo: "man_city", team1Score: 1, team2Score: 3, date: "2024-01-22"),
            ],
            players: [
                Player(name: "Jamie Vardy", position: "Forward", squadNumber: 9),
                Player(name: "James Maddison", position: "Midfielder", squadNumber: 10),
                Player(name: "Kasper Schmeichel", position: "Goalkeeper", squadNumber: 1),
            ]
        ),
        Club(
            name: "West Ham United",
            abbreviation: "#WHU",
            imageName: "west_ham",
            location: "East London",
            matches: [
                Match(team1Logo: "west_ham", team2Logo: "liverpool", team1Score: 1, team2Score: 3, date: "2024-01-11"),
                Match(team1Logo: "west_ham", team2Logo: "mu", team1Score: 1, team2Score: 2, date: "2024-01-17"),
                Match(team1Logo: "west_ham", team2Logo: "arsenal", team1Score: 0, team2Score: 2, date: "2024-01-23"),
            ],
            players: [
                Player(name: "Michail Antonio", position: "Forward", squadNumber: 30),
                Player(name: "Declan Rice", position: "Midfielder", squadNumber: 41),
                Player(name: "Lukasz Fabianski", position: "Goalkeeper", squadNumber: 1),
            ]
        ),
        Club(
            name: "Everton",
            abbreviation: "#EVE",
            imageName: "everton",
            location: "North East Liverpool",
            matches: [
                Match(team1Logo: "everton", team2Logo: "newcastle", team1Score: 2, team2Score: 0, date: "2024-01-12"),
                Match(team1Logo: "everton", team2Logo: "liverpool", team1Score: 0, team2Score: 2, date: "2024-01-18"),
                Match(team1Logo: "everton", team2Logo: "mu", team1Score: 0, team2Score: 1, date: "2024-01-24"),
            ],
            players: [
                Player(name: "Dominic Calvert-Lewin", position: "Forward", squadNumber: 9),
                Player(name: "Richarlison", position: "Forward", squadNumber: 7),
                Player(name: "Jordan Pickford", position: "Goalkeeper", squadNumber: 1),
            ]
        ),
        Club(
            name: "Newcastle United",
            abbreviation: "#NEW",
            imageName: "newcastle",
            location: "Newcastle",
            matches: [
                Match(team1Logo: "newcastle", team2Logo: "everton", team1Score: 0, team2Score: 2, date: "2024-01-13"),
                Match(team1Logo: "newcastle", team2Logo: "mu", team1Score: 1, team2Score: 2, date: "2024-01-19"),
                Match(team1Logo: "newcastle", team2Logo: "leicester", team1Score: 1, team2Score: 1, date: "2024-01-25"),
            ],
            players: [
                Player(name: "Callum Wilson", position: "Forward", squadNumber: 13),
                Player(name: "Allan Saint-Maximin", position: "Forward", squadNumber: 10),
                Player(name: "Martin Dubravka", position: "Goalkeeper", squadNumber: 1),
            ]
        ),
    ]
}

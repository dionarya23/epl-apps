//
//  PlayerCardView.swift
//  DicodingSubmission
//
//  Created by Dion Arya Pamungkas on 04/01/24.
//

import SwiftUI

struct PlayerCardView: View {
    let players: [Player]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(players, id: \.id) { player in
                    PlayerCard(player: player)
                        .padding(.trailing, 10)
                }
            }
        }
        .frame(height: 120)
        .transition(.move(edge: .bottom))
    }
}

#Preview {
    PlayerCardView(players: [
        Player(name: "Kevin De Bruyne", position: "Midfielder", squadNumber: 17),
        Player(name: "Raheem Sterling", position: "Forward", squadNumber: 7),
        Player(name: "Ruben Dias", position: "Defender", squadNumber: 3),
    ]
 )
}

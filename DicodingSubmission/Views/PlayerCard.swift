//
//  PlayerCard.swift
//  DicodingSubmission
//
//  Created by Dion Arya Pamungkas on 04/01/24.
//

import SwiftUI

struct PlayerCard: View {
    var player: Player

    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            Image(systemName: "person.crop.circle")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .foregroundColor(Color("NavColor"))
            
            VStack(alignment: .leading, spacing: 10) {
                Text(player.name)
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                HStack(spacing: 10) {
                    Text(player.position.uppercased())
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .fontWeight(.light)
                    
                    Text("#\(player.squadNumber)")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .fontWeight(.light)
                }
            }
        }
        .frame(width: 350, height: 100)
        .background(Color("SecondColor"))
        .cornerRadius(10)
        .padding(.top, 10)
    }
}

#Preview {
    PlayerCard(player: Player(name: "Ruben Dias", position: "Midfielder", squadNumber: 17))
}

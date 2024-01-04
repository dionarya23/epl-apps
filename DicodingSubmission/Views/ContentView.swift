//
//  ContentView.swift
//  DicodingSubmission
//
//  Created by Dion Arya Pamungkas on 04/01/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var clubController = ClubController()
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        NavigationView {
            VStack(spacing: 2) {
                Image("pl_logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)

                HStack {
                    List(clubController.premierLeagueClubs) { club in
                        NavigationLink(destination: ClubDetailView(club: club)) {
                            ClubRow(club: club)
                        }
                        .listRowSeparator(.hidden)
                        .padding(.horizontal, 20)
                        .padding()
                        .listRowBackground(Color("AccentColor"))
                    }
                    .listStyle(.inset)
                }
                .toolbar {
                    ToolbarItem {
                        NavigationLink(destination: ProfileView()) {
                            Image(systemName: "person.crop.circle")
                                .foregroundColor(Color("AccentColor"))
                                .frame(width: 24, height: 24)
                                .padding()
                        }
                    }
                }
            }
        }
        .colorScheme(.light)
    }
}


#Preview {
    ContentView()
}

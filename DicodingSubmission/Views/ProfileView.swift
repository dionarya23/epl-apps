//
//  ProfileView.swift
//  DicodingSubmission
//
//  Created by Dion Arya Pamungkas on 04/01/24.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color("AccentColor")
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 10) {
                Image("dion")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 240, height: 240)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 5)
                    .padding()
                
                Text("Dion Pamungkas")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                
                Text("I'm a Software Engineer Backend based in Indonesia 🇮🇩. I have a strong affinity for creating beautiful and highly functional websites.")
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
            }
            .padding()
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
    ProfileView()
}

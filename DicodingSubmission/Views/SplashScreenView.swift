//
//  SplashScreenView.swift
//  DicodingSubmission
//
//  Created by Dion Arya Pamungkas on 04/01/24.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            Image("pl_logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    SplashScreenView()
}
